# Using Neural Networks to Predict the Rental Prices in the City of Ljubljana

This project is designed to scrape the contents of the slovenia's most popular website for real-estates,
process the data and design an ML model to predict the prices based on the characteristics of apartments
for the city of Ljubljana, because it is the largest in the country and has substantially more data to
work on. There are several files in this project.


We utilized the Beautiful Soup library for web scraping. At first glance, we arrive at a single one-liner having scraped one link. Since the HTML parser had no problems with the website, the data cleaning step is fairly simple. 

## Data Preprocessing

We have taken 5 categories into consideration: location, year of construction and adaption, number of rooms and space. We used a feature cross to combine latitude and longitude. After the preprocessing, we arrive at the correlation matrix.

<img src="https://github.com/Timothy102/nepremicnine/blob/main/Screenshot from 2021-05-15 17-36-27.png" alt="drawing" width="750"/>



## Contact

LinkedIn : https://www.linkedin.com/in/tim-cvetko-32842a1a6/

Medium : https://cvetko-tim.medium.com/
