# This script will scrape the entire nepremicnine.net rental apartments for Ljubljana city.

from bs4 import BeautifulSoup
from lxml import html
import requests
import csv
import sys

base_URL = sys.argv[1]

def check_total_pages(base_url):
    r = requests.get(base_url)
    page_tree = html.fromstring(r.content)
    total_pages = int(page_tree.xpath('//div[@id="pagination"]/ul/@data-pages')[0])
    return total_pages

def check_all_pages(base_url):
    num_pages = check_total_pages(base_url)
    num_of_items = 0

    csv_first_line = ["title","offer_type","desc","size","price"]

    with open("generated_file.csv", "w") as file:
        writer = csv.writer(file, delimiter="|")
        writer.writerow(csv_first_line)

    for page in range(num_pages):
        current_page_number = page + 1
        current_page_URL = base_URL + f"{current_page_number}/"
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

            item_components = [title,offer_type,desc,size,price]

            with open("generated_file.csv", "a") as file:
                writer = csv.writer(file, delimiter="|")
                writer.writerow(item_components)
            
check_all_pages(base_URL)