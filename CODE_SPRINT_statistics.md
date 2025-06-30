# Data Information

These exercises use the data file `gov_env_2015.csv`. This data set includes environmental and government data on 150+ countries for 2015.  The original data comes from https://www.gu.se/en/quality-government/qog-data, but variables have been renamed and some values may have been changed.

Each row in the data set is a country-year observation.

Variables:

* **country**: name of the country
* **region**: region that the country is in 
* **population**
* **electoral_comp**: categorical measure of what type of elections a country has:
  0. No elections
  1. Single-party elections
  2. Non-democratic multi-party elections
  3. Democratic elections
* **globalization**: a scale of economic, political, and social globalization with a theoretical range of 1 to 100.  Higher values indicate greater globalization.
* **monarchy**: binary indicator of whether a country is a monarchy (monarchy = 1)
* **presidential**: binary indicator of whether a country is a presidential system (presidential = 1)
* **democracy**: binary indicator of whether a country is a democracy (democracy = 1)
* **gdp_per_capita**: real GDP per capita in 2011 US dollars
* **rain_avg**: average annual rainfall in mm
* **temp_avg**: average annual temperature in degrees Celsius
* **climate_laws_policies**: number of climate change laws and policies enacted
* **co2_per_capita**: CO2 emissions in metric tons per capita
* **co2_growth_rate**: adjusted rate of growth in CO2 emissions
* **ag_land_pct**: % of land used for agriculture
* **forest_land_pct**: % of land that is forest
* **nat_disaster_damage**: estimated damage from natural disasters, in thousands of US dollars
* **nat_disaster_affected**: number of people affected by natural disasters
* **nat_disaster_deaths**: number of deaths from natural disasters
* **nat_disaster_n**: number of natural disasters

# Overview

These exercises cover the core concepts discussed in the workshop. The goal is for you to be able to complete these tasks independently by the end of the workshop. There is an answer key of sorts, but there are multiple ways to accomplish each task. Asking the workshop instructors for help is preferred to looking at the answer key.

Challenge exercises typically require multiple steps or putting together concepts in a way not directly demonstrated in the workshop materials.  

## Exercise: Import the Data and Load Libraries

Add code to your script to import the data from `gov_env_2015.csv`. Make sure to assign the data a name. Load any required packages into your R session.

## Exercise: Correlation

Are larger countries more globalized?  Compute the correlation between `globalization` and `population`.

Are richer countries more globalized?  Compute the correlation between `globalization` and `gdp_per_capita`.

## Exercise: t-test

Does the average `co2_per_capita` value differ between democracies and not democracies?  Use a t-test to compare the groups.

Are democracies richer (`gdp_per_capita`) than non-democracies?  Use a t-test to compare the groups.

## Exercise: Chi-squared test

Is there a relationship between `electoral_comp` and `presidential` systems?  First, make a frequency table, and then compute a chi-squared test.  Note: you will get a warning message because some of the combinations of these two values are only valid for a few countries.


## Exercise: Linear Regression

Run a regression predicting `co2_growth_rate` as a function of `co2_per_capita`, `forest_land_pct`, `ag_land_pct`, `temp_avg`, and `rain_avg`.  

Run a regression predicting `globalization` as a function of `population`, `democracy`, and `gdp_per_capita`.  Controlling for the other variables, are democracies more globalized or less than other countries?


## Exercise: Logistic Regression

Make a new variable that indicates whether the country passed any climate laws or policies (`climate_laws_policies`).  Run a logistic regression predicting this new variable as a function of `co2_per_capita`, `temp_avg`, `rain_avg`, and `globalization`.  Which, if any, of the predictor variables are a statistically significant predictor of climate laws/policies being passed?














