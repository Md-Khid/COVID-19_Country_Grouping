# Project Overview

## Introduction
The objective of this project is to conduct an in-depth analysis to determine countries' groupings based on COVID-19 level risk through the use of the K-means clustering method. The project will demonstrate the use of proprietary software tools such as IBM SPSS Modeller, JMP Statistical Software and MS Excel to accurately group countries based on their risk level by employing the most effective clustering strategies using two distinct time periods and selecting the most suitable variables. Through the use of the Cross Industry Standard Process for Data Mining (CRISP-DM) methodology, the project aims to derive valuable insights by utilising data analytics techniques such as exploratory data analysis (EDA) and K-means clustering modelling to derive valuable insights country grouping based on their COVID-19 level risk.


#### Business Problem

As the COVID-19 pandemic spread rapidly around the globe, its devastating effects compounded the already fragile state of the global healthcare system. To prevent further spread of the virus and mitigate its impacts, each country had to make a concerted effort to dedicate significant resources, manpower, and time, and make difficult decisions quickly in order to enact an immediate lockdown intended to safeguard both their citizens' lives and their economies. This has led to the business problem of investigating how an unsupervised clustering analysis, such as the K-means algorithm, can help in the identification of countries with similar observational traits and characteristics. Such a strategic identification method can successfully distinguish between a high risk and low risk countries group, enabling countries to identify their risk group and implement necessary policies such as adopting appropriate regulations, issuing travel advisories and prioritising medical assistance to slow the spread of the virus.

#### Business Analytics Problem

The business analytics problem is to accurately group countries based on their risk level by employing the most effective clustering strategies using two distinct time periods and selecting the most suitable variables. Manually selecting arbitrary time periods or variables can result in erroneous cluster formation and therefore, incorrect classification of countries. Additionally, another issue is ascertaining the number of fixed variables to be used across different datasets. This is an essential aspect that must be addressed in order to reduce information loss when diverse cluster formations are observed across different time periods. Through a comprehensive literature review, this project will carefully assess the different clustering strategies and determine the most appropriate modelling technique to be applied for this problem. See full report [here](https://github.com/Md-Khid/K-Means-Clustering/blob/main/Full_Report.pdf).


## Data Understanding and Preparation
##### Data Understanding and Preparation in Microsoft Excel
The purpose of this process is to gain a thorough understanding of the data attributes, distribution, quality and statistical data that will be used in the study. To obtain the dataset, the project will utilise publicly available data sources on the internet. Only the specific variable name(s) specified in table below will be selected from each dataset for the study. The motivation for selecting such variables from these online sources is that both the variable name(s) and datasets have been utilised by prior researches discussed in the literature review. Therefore, the variable(s) of interest are extracted from each downloaded dataset.

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


The extracted data are combined into a single Microsoft Excel file by utilising the v-lookup function to retrieve the necessary variables contained in the downloaded dataset. An additional variable titled 'Percentage Ratio of Total Cases to Total Population' will be generated to acquire the percentage value of COVID-19 occurrences. This variable will be used in the study to reflect the number of infection cases per population within a country. For the purpose of simplicity, only countries with full data for the years 2021 and 2022 will be chosen for the analysis (see combined dataset [here](https://github.com/Md-Khid/K_Means_Clustering/tree/main/Combined%20Dataset%20Yr2021%20and%20Yr2022)).
Based on this preparatory stage, the project has identified a total of 37 countries to be used in the clustering method. The variables obtained from the combined dataset are described in the data dictionary below.

### Data Dictionary

| Field                                            | Data Type | Description                                                       |
|--------------------------------------------------|-----------|-------------------------------------------------------------------|
| Location                                         | Nominal   | Geographical location of a country                                |
| Date                                             | Continuous| Date of observation                                               |
| Population                                       | Continuous| Total population of a country                                     |
| Total Cases                                      | Continuous| Total confirmed cases of COVID-19                                 |
| Percentage Ratio of Total Cases to Population   | Continuous| Percentage value obtained from dividing the number of Population of a Country by Total Cases |
| Total Deaths                                     | Continuous| Total deaths attributed to COVID-19                               |
| Total Vaccinations per hundred                   | Continuous| Total number of COVID-19 vaccination doses administered per 100 people |
| GDP per capita                                   | Continuous| Gross domestic product at purchasing power parity                 |
| Female smokers                                   | Continuous| Share of women who smoke, most recent year available              |
| Male smokers                                     | Continuous| Share of men who smoke, most recent year available                |
| Stringency Index                                 | Continuous| Government Response Stringency Index: A value from 0 to 100 (100 = strictest response) |
| Diabetes Mellitus                               | Continuous| Age Standardized Prevalence Rate Diabetes Mellitus                |
| HIV/AIDS                                         | Continuous| Age Standardized Prevalence Rate HIV/AIDS                         |
| Chronic Obstructive Pulmonary Disease (COPD)    | Continuous| Age Standardized Prevalence Rate Chronic Obstructive Pulmonary Disease (COPD) |
| Air Quality PM2.5                                | Continuous| Concentrations of fine particulate matter (PM2.5)                 |
| Health Security Index                            | Continuous| The overall strength of the health system and adherence to global norms |
| Infant Mortality Rate                            | Continuous| Number of death per 1,000 live births before reaching one year of age |
| Country Income Level                            | Categorical| "1 = Low Income, 2 = Lower Middle Income 3 = Upper Middle Income, 4 = High Income" |

## Data Exploration


For data exploration (utilising MS Excel pivot table), the project will delve deeper into the relationships between the locations of the countries and their total vaccinations per hundred, GDP per capita, and the prevalence of chronic and infectious diseases. 

### Total Vaccinations Per Hundred Yr.2020

In this section the study will demonstrate the significant rise in the number of countries that have commenced their vaccination per 100 people since 2020. During the initial stages of the virus outbreak, it can be observed that only Bahrain and Israel had begun vaccinating their populations.

![Picture1](https://github.com/Md-Khid/K_Means_Clustering/assets/160820522/e77dce0c-8dde-44e8-9e60-60c43625cdce)

### Total Vaccinations Per Hundred Yr.2021

By the year 2021, only six countries - Bahrain, Chile, Denmark, Malta, Singapore and Uruguay - had begun to actively raise their total vaccination rate to 200 per hundred people. This means that, by that point, each person in the population had received approximately two doses of vaccinations.

<img width="1433" alt="Picture2" src="https://github.com/Md-Khid/K_Means_Clustering/assets/160820522/416fcb62-edb2-47dc-baf3-ef2314b19296">

### Total Vaccinations Per Hundred Yr.2022

By the year 2022, it is estimated that 68% of the 37 countries had begun to raise their total vaccination rate to over 200 vaccinations per hundred people. However, only two of the remaining 12 countries, Bulgaria and Zimbabwe, had achieved a total vaccination rate of less than 100 vaccinations per hundred people. This means that most people in that population had yet to receive a single dose of vaccination.

<img width="1435" alt="Picture3" src="https://github.com/Md-Khid/K_Means_Clustering/assets/160820522/7fa7aa3b-836e-4878-96f6-b3669f4e0a21">

### GDP per capita Yr.2021

In this section, the project will illustrate the correlation between Total Vaccinations per hundred and a country’s GDP per capita. It can be seen in 2021 that there is a strong association between the total vaccinations and the country's GDP per capita. Therefore, it can be concluded that the higher the country's GDP per capita, the higher the total vaccination rate per hundred people.

<img width="1094" alt="Picture4" src="https://github.com/Md-Khid/K_Means_Clustering/assets/160820522/23067959-64cd-4ff9-bf1d-73bf3d9df6a8">


### GDP per capita Yr.2022

A closer examination reveals, however, that the rise in total vaccinations per hundred people in the population may not be directly correlated to the nation's GDP per capita. Despite a steady GDP per capita in 2022, the number of total vaccinations per hundred is consistently on the rise, shifting to the right. This could suggest that the majority of countries studied are committed to providing their populations with a minimum of two doses of vaccination per hundred individuals, regardless of their GDP levels.

<img width="1090" alt="Picture5" src="https://github.com/Md-Khid/K_Means_Clustering/assets/160820522/7d4aa214-d707-4e4b-9bcb-6e1b02abeffe">


### Country Characteristics and Disease Burden

For the concluding data exploration, the project will demonstrate the association between a country's location and income level, and the extent of both infectious and chronic diseases. It can be seen that in lower middle-income countries such as Zimbabwe, there is a greater prevalence of infectious diseases such as HIV and AIDS, whereas in upper-middle countries such as Azerbaijan, Malaysia, Thailand, Brazil and China, chronic diseases like Chronic Obstructive Pulmonary Disease (COPD) are more commonly observed. It can also be observed that both these lower and upper middle-income countries tend to demonstrate a higher prevalence of chronic diseases when compared to the high-income countries such as Bahrain, Japan, and Singapore. Consequently, it is likely that the population in these countries may lack the necessary access to healthcare facilities to receive the necessary medical treatment.

<img width="1746" alt="Picture6" src="https://github.com/Md-Khid/K_Means_Clustering/assets/160820522/5a8d2496-14c8-47fd-9978-8ec86d4b5b59">



