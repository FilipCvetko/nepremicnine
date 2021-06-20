# Using Neural Networks to Predict the Rental Prices in the City of Ljubljana

This project is designed to scrape the contents of the slovenia's most popular website for real-estates,
process the data and design an ML model to predict the prices based on the characteristics of apartments
for the city of Ljubljana, because it is the largest in the country and has substantially more data to
work on. There are several files in this project.


We utilized the Beautiful Soup library for web scraping. At first glance, we arrive at a single one-liner having scraped one link. Since the HTML parser had no problems with the website, the data cleaning step is fairly simple. 

## Data Preprocessing

We have taken 5 categories into consideration: location, year of construction and adaption, number of rooms and space. We used a feature cross to combine latitude and longitude. After the preprocessing, we arrive at the correlation matrix.

<img src="https://github.com/Timothy102/nepremicnine/blob/master/cor.png" alt="drawing" width="750"/>

{% embed url="https://datapane.com/u/timothy102/reports/ljubljana/" %}


## Model architecture

Tuning machine learning hyperparameters is a tedious yet crucial task, as the performance of an algorithm can be highly dependent on the choice of hyperparameters. Manual tuning takes time away from important steps of the machine learning pipeline like feature engineering and interpreting results. Grid and random search are hands-off, but require long run times because they waste time evaluating unpromising areas of the search space. Increasingly, hyperparameter tuning is done by automated methods that aim to find optimal hyperparameters in less time using an informed search with no manual effort necessary beyond the initial set-up.

The greatest combination of hyperparameters is stored in a dictionary called hparams and they are an absolutely valid form to ingest to a model. If you think about it, the hyperparameter tuning could by itself be a concrete model. I decided to build the model again, including the best hparams, but with a substantially larger amount of epochs. There was no need to overkill hyperparameter tuning with the same number of epochs, as all we needed was parameters that give the best result.
According to hyperparameter tuning, the optimal parameters are 64 units, 0.3 for the dropout rate, stochastic gradient descent as the optimizer, and a learning rate of 0.001.

<img src="https://github.com/Timothy102/nepremicnine/blob/master/lr.png" alt="drawing" width="750"/>

## Contact

LinkedIn : https://www.linkedin.com/in/tim-cvetko-32842a1a6/

Medium : https://cvetko-tim.medium.com/
