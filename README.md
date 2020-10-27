# www.nepremičnine.net web scraper
This project is designed to scrape the contents of the slovenia's most popular website for real-estates,
process the data and design an ML model to predict the prices based on the characteristics of apartments
for the city of Ljubljana, because it is the largest in the country and has substantially more data to
work on. There are several files in this project.

1.  **scraper.py** -> Works ontop of raspberry pi. It is assigned as a cronjob to scrape new ads on the website in real-time every 24 hours.
2.  **log.txt** -> Outputs daily new ads as a log file.
3.  **appdata.json** -> Stores base URL, number of elements and all offer ID's.
4.  **Ljubljana jupyter textbook** -> It is a machine-learning model designed by my brother @Timothy102 to predict the rental prices.
