# This script will scrape the entire nepremicnine.net rental apartments for Ljubljana city.

from lxml import html
import requests
import csv
import ujson
import re
import os
import numpy as np
import logging

logging.basicConfig(filename="log.txt", level=logging.INFO, format="%(asctime)s:%(levelname)s:%(message)s")

class Scraper:

    def __init__(self, appdata_file):
        with open(appdata_file, "r") as file:
            appdata = ujson.load(file)
        if not appdata:
            raise FileNotFoundError(f"Could not load {appdata_file}.")
        self._appdata = appdata
        self._appdata_file = appdata_file
        self._baseURL = appdata["baseURL"]
        

    def does_offer_exist(self, offer_id):
        visited = self._appdata["visited"]
        for item in visited:
            if str(item) == str(offer_id):
                return True
        return False 

    def check_total_pages(self):
        r = requests.get(self._baseURL)
        page_tree = html.fromstring(r.content)
        total_pages = int(page_tree.xpath('//div[@id="pagination"]/ul/@data-pages')[0])
        return total_pages

    def check_all_pages(self):
        num_pages = self.check_total_pages()
        num_of_items = 0

        csv_first_line = ["title","offer_type","desc","size","price","gradnja","adaptacija"]

        if not os.path.exists("generated_file.csv"):
            with open("generated_file.csv", "w") as file:
                writer = csv.writer(file, delimiter="|")
                writer.writerow(csv_first_line)

        # If this is our first search ever, we must add the columns.
        if os.stat("generated_file.csv").st_size == 0:
            with open("generated_file.csv", "w") as file:
                writer = csv.writer(file, delimiter="|")
                writer.writerow(csv_first_line)

        for page in range(num_pages):
            current_page_number = page + 1
            current_page_URL = self._baseURL + f"{current_page_number}/"
            print(current_page_URL)
            r = requests.get(current_page_URL)
            page_tree = html.fromstring(r.content)
            offers = page_tree.xpath('//div[@class="seznam"]/div[@itemprop="itemListElement"]')

            for offer in offers:

                title = offer.xpath("div/h2/a/span/text()")[0]
                offer_type = offer.xpath('div/div/span/span[@class="tipi"]/text()')[0]
                desc = offer.xpath('div/div/div[@class="kratek_container"]/div/text()')[0]
                size = offer.xpath('div/div/div[@class="main-data"]/span[@class="velikost"]/text()')[0]
                price = offer.xpath('div/div/div[@class="main-data"]/span[@class="cena"]/text()')[0]
                offer_id = offer.xpath('attribute::id')[0]

                # Uporabimo reg-ex, da najdemo leto gradnje in adaptacije.
                ad_pattern = r"adapt[a-zA-Z\.\s]*([0-9]{4})"
                grad_pattern = r"zgr[a-zA-Z\.\s]*([0-9]{4})"
                if re.search(ad_pattern, desc):
                    adaptacija = re.search(ad_pattern, desc)[1]
                else:
                    adaptacija = np.NaN
                if re.search(grad_pattern, desc):
                    gradnja = re.search(grad_pattern, desc)[1]
                else:
                    gradnja = np.NaN

                item_components = [title,offer_type,desc,size,price,gradnja,adaptacija]

                if self.does_offer_exist(offer_id):
                    continue
                
                # In case the offer does not exist
                # Append the information to the csv file and append the offer id to visited list.
                with open("generated_file.csv", "a") as file:
                    writer = csv.writer(file, delimiter="|")
                    writer.writerow(item_components)

                self._appdata["visited"].append(offer_id)

        # Before we write the appdata file, let's see how many new offer id's we got.
        new_elements_this_query = len(self._appdata["visited"]) - self._appdata["numElements"]
        self._appdata["numElements"] = len(self._appdata["visited"])

        logging.info(f"This query resulted in {new_elements_this_query} new results.")

        # Now we have to write self._appdata, which is stored locally in the script, to the
        # appdata.json in the directory.
        with open(self._appdata_file, "w") as file:
            ujson.dump(self._appdata, file, indent=2)
            
APPDATA_FILE = "appdata.json"

scraper = Scraper(APPDATA_FILE)
scraper.check_all_pages()