# Data Information

These exercises use the data file `gov_env_2015.csv`. This data set includes environmental and government data on 150+ countries for 2015. The original data comes from <https://www.gu.se/en/quality-government/qog-data>, but variables have been renamed and some values may have been changed.

Each row in the data set is a country-year observation.

Variables:

-   **country**: name of the country
-   **region**: region that the country is in
-   **population**
-   **electoral_comp**: categorical measure of what type of elections a country has:
    0.  No elections
    1.  Single-party elections
    2.  Non-democratic multi-party elections
    3.  Democratic elections
-   **globalization**: a scale of economic, political, and social globalization with a theoretical range of 1 to 100. Higher values indicate greater globalization.
-   **monarchy**: binary indicator of whether a country is a monarchy (monarchy = 1)
-   **presidential**: binary indicator of whether a country is a presidential system (presidential = 1)
-   **democracy**: binary indicator of whether a country is a democracy (democracy = 1)
-   **gdp_per_capita**: real GDP per capita in 2011 US dollars
-   **rain_avg**: average annual rainfall in mm
-   **temp_avg**: average annual temperature in degrees Celsius
-   **climate_laws_policies**: number of climate change laws and policies enacted
-   **co2_per_capita**: CO2 emissions in metric tons per capita
-   **co2_growth_rate**: adjusted rate of growth in CO2 emissions
-   **ag_land_pct**: % of land used for agriculture
-   **forest_land_pct**: % of land that is forest
-   **nat_disaster_damage**: estimated damage from natural disasters, in thousands of US dollars
-   **nat_disaster_affected**: number of people affected by natural disasters
-   **nat_disaster_deaths**: number of deaths from natural disasters
-   **nat_disaster_n**: number of natural disasters

# Overview

These exercises cover the core concepts discussed in the workshop. The goal is for you to be able to complete these tasks independently by the end of the workshop. There is an answer key of sorts, but there are multiple ways to accomplish each task. Asking the workshop instructors for help is preferred to looking at the answer key.

Challenge exercises typically require multiple steps or putting together concepts in a way not directly demonstrated in the workshop materials.

# Exercises

## Exercise: Create a Project

Create a new RStudio project. When creating the project, choose the option to "Open in new session". This will result in two copies of RStudio running on your computer, so that you can switch back and forth between the two projects during the workshop.

Create a R script file in the new project where you will write the code for the following exercises.

## Exercise: Import the Data

Copy the `gov_env_2015.csv` file from the workshop materials folder to the folder for the new RStudio project you created for the exercises.

Add code to your script to import the data. Make sure to assign the data a name.

Write code to get the dimensions of the data frame and the names of the variables (columns).

## Exercise: Load external packages

Write code to load the `tidyverse` packages into your R session.

## Exercise: Compute Summary Statistics

Compute the average (mean) and median values of `globalization`, `rain_avg`, `temp_avg`, and `co2_per_capita`.

## Exercise: Frequency Table

Create a frequency table of the number of natural disasters (`nat_disaster_n`).

Create a frequency table of the number of climate laws/policies (`climate_laws_policies`).

Be sure to include any missing values in the tables.

## Exercise: Conditional Summary Statistics

Compute the average (mean) of `rain_avg` and `temp_avg` for countries in the region "Eastern Europe/Former USSR".

Challenge: Which country in "Latin America"" had the highest value of `co2_per_capita`?

Challenge: How many countries in "Sub-Saharan Africa" had `co2_per_capita` greater than 1 metric ton?

## Exercise: Count and Find Missing Data

Which variable(s) have the most missing values?

Challenge: Are democracies or not democracies missing more `co2_per_capita` values?

Challenge: Which countries are missing `co2_growth_rate` values?

## Exercise: Subset the Data Frame: Compound Conditions

Subset the data frame to only include monarchies in "Western Europe, North America, Australia, New Zealand". Save the subset in a new variable. Which of the countries in the subset has the largest population?

## Exercise: Modify Variables

Modify the `monarchy` variable so that the values are "monarchy" and "not monarchy" instead of numeric or logical values.

Convert `rain_avg` to inches instead of mm (multiply by 25.4).

Change country name of "Congo, Democratic Republic" to "DR Congo".

## Exercise: Change Variable Names

Rename the `ag_land_pct` variable to `agriculture_land_pct`.

## Exercise: Modify Variable Types

Change the presidential variable to be of type logical (TRUE/FALSE) instead of numeric.

## Exercise: Make a New Variable

Create a new variable in the data frame (make up a name) that is TRUE if any climate laws or policies were passed and FALSE otherwise.

## Exercise: Create a Factor

Modify the presidential variable to have the values "Presidential" and "Not Presidential". Convert the variable to a factor, where the "Presidential" category displays first.

Challenge: Research (or ask a GenAI tool) how to use labels when creating a factor. Create a factor of `electoral_comp`, adding text labels for the categories.

## Exercise: Group Statistics (with dplyr)

Compute the average and maximum of globalization by whether the country is a democracy.

How many deaths were caused by natural disasters by region? (hint: use sum())

Challenge: Compute the mean number of climate_laws_policies grouping countries by whether they have above or below average `co2_per_capita`.

## Exercise: Group Proportions

What proportion of countries are democracies?

How many and what proportion of countries fall into each category of electoral_comp?

Challenge: compute the proportion of countries that are democracies per region.

## Exercise: Test Your Reproducibility

Save your code file, and then close RStudio. If prompted as to whether to save the workspace image, say no. Then restart RStudio (if you created an RStudio project, make sure it's open) and re-run your code file through in order to see if everything still works.
