# This script will scrape the entire nepremicnine.net rental apartments for Ljubljana city.

from bs4 import BeautifulSoup
from urllib.request import Request, urlopen
from lxml import html
import requests
import time

base_URL = "https://www.nepremicnine.net/oglasi-oddaja/ljubljana-mesto/stanovanje/"

def check_total_pages(base_url):
    r = requests.get(base_url)
    page_tree = html.fromstring(r.content)
    total_pages = int(page_tree.xpath('//div[@id="pagination"]/ul/@data-pages')[0])
    return total_pages

def check_all_pages(base_url):
    num_pages = check_total_pages(base_url)

    for page in range(num_pages):
        current_page_number = page + 1
        current_page_URL = base_URL + f"{current_page_number}/"
        print(current_page_URL)
        r = requests.get(current_page_URL)
        page_tree = html.fromstring(r.content)
        offers = page_tree.xpath('//div[@class="seznam"]/div[@itemprop="itemListElement"]')

        for offer in offers:

            title = offer.xpath("div/h2/a/span/text()")[0]
            link = f'{"base_url"}{offer.xpath("div/h2/a/attribute::href")[0]}'
            offer_type = offer.xpath('div/div/span/span[@class="tipi"]/text()')[0]
            desc = offer.xpath('div/div/div[@class="kratek_container"]/div/text()')[0]
            size = offer.xpath('div/div/div[@class="main-data"]/span[@class="velikost"]/text()')[0]
            price = offer.xpath('div/div/div[@class="main-data"]/span[@class="cena"]/text()')[0]

            csv_formatted_line_string = str(title) + "," + str(offer_type) + "," + str(desc) + "," + str(size) + "," + str(price)
            csv_first_line = "title,offer type,description,size, price"

            print(csv_formatted_line_string)
            time.sleep(2)

check_all_pages(base_URL)