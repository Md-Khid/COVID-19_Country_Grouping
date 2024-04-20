# Project Overview

## Introduction
The objective of this project is to conduct an in-depth analysis to determine countries' groupings based on COVID-19 level risk through the use of the K-means clustering method. The project will demonstrate the use of proprietary software tools such as IBM SPSS Modeller, JMP Statistical Software and MS Excel to accurately group countries based on their risk level by employing the most effective clustering strategies using two distinct time periods and selecting the most suitable variables. Through the use of the Cross Industry Standard Process for Data Mining (CRISP-DM) methodology, the project aims to derive valuable insights by utilising data analytics techniques such as exploratory data analysis (EDA) and K-means clustering modelling to derive valuable insights country grouping based on their COVID-19 level risk.


#### Business Problem

As the COVID-19 pandemic spread rapidly around the globe, its devastating effects compounded the already fragile state of the global healthcare system. To prevent further spread of the virus and mitigate its impacts, each country had to make a concerted effort to dedicate significant resources, manpower, and time, and make difficult decisions quickly in order to enact an immediate lockdown intended to safeguard both their citizens' lives and their economies. This has led to the business problem of investigating how an unsupervised clustering analysis, such as the K-means algorithm, can help in the identification of countries with similar observational traits and characteristics. Such a strategic identification method can successfully distinguish between a high risk and low risk countries group, enabling countries to identify their risk group and implement necessary policies such as adopting appropriate regulations, issuing travel advisories, and prioritising medical assistance to slow the spread of the virus.

#### Business Analytics Problem

The business analytics problem is to accurately group countries based on their risk level by employing the most effective clustering strategies using two or more distinct time periods and selecting the most suitable variables. Manually selecting arbitrary time periods or variables can result in erroneous cluster formation and, therefore, incorrect classification of countries. Additionally, another issue is ascertaining the number of fixed variables to be used across different datasets. This is an essential aspect that must be addressed in order to reduce information loss when diverse cluster formations are observed across different time periods. Through a comprehensive literature review, this study will carefully assess the different clustering strategies and determine the most appropriate modelling technique to be applied for this research. See full report [here](https://github.com/Md-Khid/K-Means-Clustering/blob/main/Full_Report.pdf).


## Data Understanding and Preparation
##### Data Understanding and Preparation in Microsoft Excel

| Variable Name                              | Dataset                                             | Webpage                            |
|--------------------------------------------|-----------------------------------------------------|-----------------------------------|
| Total Population                           | World Development Indicators                       | [databank.worldbank.org](https://databank.worldbank.org) |
| Total Cases                                | Covid-19 Dataset                                   | [ourworldindata.org](https://ourworldindata.org) |
| Total Deaths                               |                                                     |                                   |
| Total Vaccinations per hundred             |                                                     |                                   |
| GDP per capita                             |                                                     |                                   |
| Female Smokers                             |                                                     |                                   |
| Male Smokers                               |                                                     |                                   |
| Stringency Index                           |                                                     |                                   |
| Prevalence Rate Diabetes Mellitus          | Global Burden of Disease Study Dataset            | [ghdx.healthdata.org](https://ghdx.healthdata.org) |
| Prevalence Rate HIV/AIDS                  |                                                     |                                   |
| Prevalence Rate Tuberculosis              |                                                     |                                   |
| Prevalence Rate Chronic Obstructive Pulmonary Disease (COPD) |                                              |                                   |
| Air Quality PM2.5                         | Air Quality Dataset                                | [who.int](https://who.int)       |
| Health Security Index                     | GHS Index Dataset                                  | [ghsindex.org](https://ghsindex.org) |
| Infant Mortality Rate                     | World Development Indicators                       | [databank.worldbank.org](https://databank.worldbank.org) |
| Country Income Level                      | World Bank Country and Lending Groups Dataset      | [datatopics.worldbank.org](https://datatopics.worldbank.org) |
