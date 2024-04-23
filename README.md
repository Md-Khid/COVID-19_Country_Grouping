# Project Overview

## Introduction
The objective of this study is to conduct an in-depth analysis to determine countries' groupings based on COVID-19 level risk through the use of the K-means clustering method. The study will demonstrate the use of proprietary software tools such as IBM SPSS Modeller, JMP Statistical Software and MS Excel to accurately group countries based on their risk level by employing the most effective clustering strategies using two distinct time periods and selecting the most suitable variables. Guided by the Cross Industry Standard Process for Data Mining (CRISP-DM) methodology, the study aims to derive valuable insights through techniques such as exploratory data analysis (EDA) and clustering modelling for country grouping based on their COVID-19 risk levels.


### Business Problem

As the COVID-19 pandemic spread rapidly around the globe, its devastating effects compounded the already fragile state of the global healthcare system. To prevent further spread of the virus and mitigate its impacts, each country had to make a concerted effort to dedicate significant resources, manpower, and time, and make difficult decisions quickly in order to enact an immediate lockdown intended to safeguard both their citizens' lives and their economies. This has led to the business problem of investigating how an unsupervised clustering analysis, such as the K-means algorithm, can help in the identification of countries with similar observational traits and characteristics. Such a strategic identification method can successfully distinguish between a high risk and low risk countries group, enabling countries to identify their risk group and implement necessary policies such as adopting appropriate regulations, issuing travel advisories and prioritising medical assistance to slow the spread of the virus.

### Business Analytics Problem

The business analytics problem is to accurately group countries based on their risk level by employing the most effective clustering strategies using two distinct time periods and selecting the most suitable variables. Manually selecting arbitrary time periods or variables can result in erroneous cluster formation and therefore, incorrect classification of countries. Additionally, another issue is ascertaining the number of fixed variables to be used across different datasets. This is an essential aspect that must be addressed in order to reduce information loss when diverse cluster formations are observed across different time periods. Through a comprehensive literature review, this study will carefully assess the different clustering strategies and determine the most appropriate modelling technique to be applied for this problem (see full report [here](https://github.com/Md-Khid/COVID-19_Risk-Based_Country_Grouping-_K-means_Clustering_with_IBM_SPSS-_JMP-_Excel/blob/main/Full%20Report.pdf)).


## Data Understanding and Preparation
### Data Understanding and Preparation in Microsoft Excel
The purpose of this process is to gain a thorough understanding of the data attributes, distribution, quality and statistical data that will be used in the study. To obtain the dataset, the study will utilise publicly available data sources on the internet. Only the specific variable name(s) specified in table below will be selected from each dataset for the study. The motivation for selecting such variables from these online sources is that both the variable name(s) and datasets have been utilised by prior researches discussed in the literature review. Therefore, the variable(s) of interest are extracted from each downloaded dataset.

| Variable Name                | Dataset                      | Webpage                                                      |
|------------------------------|------------------------------|--------------------------------------------------------------|
| Total Population1            | World Development Indicators | [databank.worldbank.org1](https://databank.worldbank.org/)   |
| Total Cases2                 | Covid-19 Dataset             | [ourworldindata.org2](https://ourworldindata.org/coronavirus)|
| Total Deaths2                |                              |                                                              |
| Total Vaccinations per hundred2|                            |                                                              |
| GDP per capita2              |                              |                                                              |
| Female Smokers2              |                              |                                                              |
| Male Smokers2                |                              |                                                              |
| Stringency Index2            |                              |                                                              |



| Variable Name                              | Dataset                                             | Webpage                            |
|--------------------------------------------|-----------------------------------------------------|-----------------------------------|
| Total Population<sup>1</sup>                           | World Development Indicators                       | [databank.worldbank.org](https://databank.worldbank.org)<sup>1</sup> |
| Total Cases <sup>2</sup>                               | Covid-19 Dataset                                   | [ourworldindata.org](https://ourworldindata.org)<sup>2</sup> |
| Total Deaths <sup>2</sup>                              |                                                     |                                   |
| Total Vaccinations per hundred <sup>2</sup>            |                                                     |                                   |
| GDP per capita <sup>2</sup>                            |                                                     |                                   |
| Female Smokers <sup>2</sup>                             |                                                     |                                   |
| Male Smokers <sup>2</sup>                              |                                                     |                                   |
| Stringency Index <sup>2</sup>                          |                                                     |                                   |
| Prevalence Rate Diabetes Mellitus <sup>3</sup>         | Global Burden of Disease Study Dataset            | [ghdx.healthdata.org](https://ghdx.healthdata.org)<sup>3</sup> |
| Prevalence Rate HIV/AIDS <sup>3</sup>                  |                                                     |                                   |
| Prevalence Rate Tuberculosis<sup>3</sup>              |                                                     |                                   |
| Prevalence Rate Chronic Obstructive Pulmonary Disease (COPD)<sup>3</sup> |                                              |                                   |
| Air Quality PM2.5 <sup>4</sup>                         | Air Quality Dataset                                | [who.int](https://who.int) <sup>4</sup>      |
| Health Security Index <sup>5</sup>                    | GHS Index Dataset                                  | [ghsindex.org](https://ghsindex.org)<sup>5</sup> |
| Infant Mortality Rate <sup>6</sup>                     | World Development Indicators                       | [databank.worldbank.org](https://databank.worldbank.org) <sup>6</sup>|
| Country Income Level<sup>6</sup>                      | World Bank Country and Lending Groups Dataset      |                                                    |


The extracted data are combined into a single Microsoft Excel file by utilising the v-lookup function to retrieve the necessary variables contained in the downloaded dataset. An additional variable titled 'Percentage Ratio of Total Cases to Total Population' will be generated to acquire the percentage value of COVID-19 occurrences. This variable will be used in the study to reflect the number of infection cases per population within a country. For the purpose of simplicity in the study, only countries with full data for the years 2021 and 2022 will be chosen for the analysis (see combined dataset [here](https://github.com/Md-Khid/K_Means_Clustering/tree/main/Combined%20Dataset%20Yr2021%20and%20Yr2022)). Given the study was conducted in late 2022, only data from January to June 2022, representing half of the year, was accessible. 
Based on this preparatory stage, the study has identified a total of 37 countries to be used in the clustering method. The variables obtained from the combined dataset are described in the table below.

#### Data Dictionary

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

#### Data Exploration

For data exploration (utilising MS Excel pivot table), the study will delve deeper into the relationships between the locations of the countries and their total vaccinations per hundred, GDP per capita and the prevalence of chronic and infectious diseases. 

#### Total Vaccinations Per Hundred Yr.2020

In this section the study will demonstrate the significant rise in the number of countries that have commenced their vaccination per 100 people since 2020. During the initial stages of the virus outbreak, it can be observed that only Bahrain and Israel had begun vaccinating their populations.

![Picture1](https://github.com/Md-Khid/K_Means_Clustering/assets/160820522/e77dce0c-8dde-44e8-9e60-60c43625cdce)

#### Total Vaccinations Per Hundred Yr.2021

By the year 2021, only six countries - Bahrain, Chile, Denmark, Malta, Singapore and Uruguay - had begun to actively raise their total vaccination rate to 200 per hundred people. This means that, by that point, each person in the population had received approximately two doses of vaccinations.

<img width="1433" alt="Picture2" src="https://github.com/Md-Khid/K_Means_Clustering/assets/160820522/416fcb62-edb2-47dc-baf3-ef2314b19296">

#### Total Vaccinations Per Hundred Yr.2022

By the year 2022, it is estimated that 68% of the 37 countries had begun to raise their total vaccination rate to over 200 vaccinations per hundred people. However, only two of the remaining 12 countries, Bulgaria and Zimbabwe, had achieved a total vaccination rate of less than 100 vaccinations per hundred people. This means that most people in that population had yet to receive a single dose of vaccination.

<img width="1435" alt="Picture3" src="https://github.com/Md-Khid/K_Means_Clustering/assets/160820522/7fa7aa3b-836e-4878-96f6-b3669f4e0a21">

#### GDP per capita Yr.2021

In this section, the study will illustrate the correlation between Total Vaccinations per hundred and a country’s GDP per capita. It can be seen in 2021 that there is a strong association between the total vaccinations and the country's GDP per capita. Therefore, it can be concluded that the higher the country's GDP per capita, the higher the total vaccination rate per hundred people.

<img width="1094" alt="Picture4" src="https://github.com/Md-Khid/K_Means_Clustering/assets/160820522/23067959-64cd-4ff9-bf1d-73bf3d9df6a8">


#### GDP per capita Yr.2022

A closer examination reveals, however, that the rise in total vaccinations per hundred people in the population may not be directly correlated to the nation's GDP per capita. Despite a steady GDP per capita in 2022, the number of total vaccinations per hundred is consistently on the rise, shifting to the right. This could suggest that the majority of countries studied are committed to providing their populations with a minimum of two doses of vaccination per hundred individuals, regardless of their GDP levels.

<img width="1090" alt="Picture5" src="https://github.com/Md-Khid/K_Means_Clustering/assets/160820522/7d4aa214-d707-4e4b-9bcb-6e1b02abeffe">


#### Country Characteristics and Disease Burden for the Years 2021 & 2022
For the concluding data exploration, the study will demonstrate the association between a country's location and income level and the extent of both infectious and chronic diseases. It can be seen that in lower middle-income countries such as Zimbabwe, there is a greater prevalence of infectious diseases such as HIV and AIDS, whereas in upper-middle countries such as Azerbaijan, Malaysia, Thailand, Brazil and China, chronic diseases like Chronic Obstructive Pulmonary Disease (COPD) are more commonly observed. It can also be observed that both these lower and upper middle-income countries tend to demonstrate a higher prevalence of chronic diseases when compared to the high-income countries such as Bahrain, Japan and Singapore. Consequently, it is likely that the population in these countries may lack the necessary access to healthcare facilities to receive the necessary medical treatment.

<img width="1746" alt="Picture6" src="https://github.com/Md-Khid/K_Means_Clustering/assets/160820522/88b3cb0b-2557-4cbc-8421-ddfb74bfb95f">

### Data Understanding and Preparation in IBM SPSS Modeller

From the obtained variables, the study will proceed to further examine the combined dataset with IBM SPSS Modeller. At this stage of preparation, the study will insert a Database node into the modeller stream to read the dataset. It will then filter out the ‘Location’, 'Date' & ‘Country Income Level’ variables in the Database node to prevent them from being fed into the clustering algorithm. Following this, it will input the filtered dataset into the Data Audit node to assess the quality and distribution of the combined data.

From the data quality table, it can be observed that there are no missing data detected. However, there are some (extreme) outliers present in the data for the years 2021 and 2022. These outliers might signify unusual or exceptional circumstances that remain valid and pertinent to the analysis. Eliminating them may result in a loss of valuable insights into these distinct situations. Variables such as population size, total deaths, air quality, total cases, infant mortality rates, stringent index and HIV/AIDS can display considerable variation across various regions and countries.  Outliers in these variables may merely mirror the inherent diversity of the data rather than errors or anomalies.

##### Data Quality Table for Yr.2021

![Picture7(2021)](https://github.com/Md-Khid/K_Means_Clustering/assets/160820522/94908a24-a2b5-48d5-8c68-c414e4caf440)


##### Data Quality Table for Yr.2022

![Picture8(2022)](https://github.com/Md-Khid/K_Means_Clustering/assets/160820522/7313df15-14e3-477d-b744-03e3c916789e)

From the data audit table, it can be observed that the minimum and maximum values for the variables in both datasets are not uniformly standardised or within the same range. This range distribution can have a significant impact on the effectiveness of the K-means clustering algorithm, as it utilises the Euclidean Distance Measure to estimate the distance between two observations (i.e. x and y) to define the shape and relationship of the clusters. To address the problem of data uniformity, the dataset will be passed through the Auto Data Prep node to scale all continuous variables into a linear format.

##### Data Audit Table for Yr.2021 (Before & After scaling)

![2021](https://github.com/Md-Khid/K_Means_Clustering/assets/160820522/e35e352c-92e6-4e78-8425-078c1dcff593)

##### Data Audit Table for Yr.2022 (Before & After scaling)

![2022](https://github.com/Md-Khid/K_Means_Clustering/assets/160820522/ce31a6cd-d21b-42c6-a6bf-f70f65c8e4ee)


### Data Understanding and Preparation in JMP Statistical Software 

Given the limitations of IBM SPSS Modeller, the study shall utilise JMP Statistical Software to help generate the multicollinearity values between the variables. Multicollinearity can adversely impact the clustering algorithm by causing distortions in the weights across different clusters. This could lead to sub-optimal weights or variables, potentially resulting in an inaccurate clustering solution. To overcome the issue of multicollinearity, the study will examine the Variance Inflation Factor (VIF) value generated for each variable. To achieve this, it will utilise the JMP statistical software to run a simple linear regression model based on the equation below.

##### Linear Regression Equation

![Picture9](https://github.com/Md-Khid/K_Means_Clustering/assets/160820522/4b176f49-e1e4-4881-a442-9c59cd1f9098)

After entering the equation into the software, the study can generate the VIF values for the variables. Generally, the VIF value should be lower than 10. If the value for the variable(s) is greater than 10, this implies that there is multicollinearity between the variables. To address this, the study must remove the affected variable(s) and recheck the VIF values for the remaining variables. If the VIF value for the remaining variables remains beneath 10, the study can then proceed to remove the affected variable(s) from the equation. From the generated VIF table, it can be observed that the VIF values for the Total cases, Total Deaths, Chronic Obstructive Pulmonary Disease and Infant Mortality rate variables are greater than 10, with the remaining variables having a VIF value lower than 10.

#### VIF values for all variables

<img width="305" alt="1" src="https://github.com/Md-Khid/K_Means_Clustering/assets/160820522/a46e8c14-9efc-4412-9c6b-949e5f988846">

Despite initially being regarded as affecting variables, the study decided to retain the Total Cases, Total Deaths, Chronic Obstructive Pulmonary Disease and Infant Mortality Rate variables in the equation due to their importance for the formation of country clusters, as established by the literature review. It is noted that their high VIF values are caused by the multicollinearity effect from the 'Percentage Ratio of Total Cases to Total Population' variable. To address this matter, the study removed both the 'Population' and 'Total Cases' variables from the equation. Following the removal of the variables, it can be seen that the VIF values for all the variables are now lower than 10.

#### VIF values for all variables (after removing the affecting variable)

<img width="312" alt="2" src="https://github.com/Md-Khid/K_Means_Clustering/assets/160820522/befc298b-3578-4cf0-b891-f6152af88a1e">


Based on this stage of preparation, the study was able to successfully eliminate the variables that could lead to multicollinearity during the clustering process. The final 14 variables will then be inputted into clustering algorithm during the modelling stage.

## Proposed Modelling and Evaluation

### Two-Step Modelling

In this stage, the Two-Step node will be used to feed the dataset into the SPSS modeller stream, generating cluster groupings using the specified inputs and default model settings, with the exception of the distance measure, for which the Euclidean distance will be utilised.

#### Cluster Results

<img width="912" alt="4" src="https://github.com/Md-Khid/K_Means_Clustering/assets/160820522/f391327a-7ce1-4109-a440-e61a35d0df9e">


Based on the clustering results, the Two-Step algorithm was capable of automatically generating the optimal number of clusters for the study, generating two distinct clusters of the appropriate sizes. However, the automatic number of cluster groupings produced by the Two-Step algorithm may not be sufficiently accurate for use in the study.

#### Determine Optimal K 
The combined dataset for the years 2021 and 2022 will be fed into a Hierarchal Cluster algorithm, in order to generate the cluster groupings. To determine the number of clusters, the study will input the selected variables into the JMP software and generate a dendrogram using the Hierarchical Clustering-Ward method.

### Hierarchical Cluster (Dendrogram) 

![Dendogram](https://github.com/Md-Khid/K_Means_Clustering/assets/160820522/2b93573a-1256-463f-b7d0-8c00047aa62e)

Based on the hierarchical clustering result, there are three distinct cluster groupings evident in the dendrogram chart. Hence, k=3 will be used to generate the optimal number of cluster groupings for the K-means algorithm in IBM SPSS Modeller.

#### K-Means Modelling

At this point, the study will utilise the K-means node to feed the merged dataset into the SPSS modeller stream. Barring the number of clusters, the study will generate cluster groupings using the default model settings. Therefore, the number 3 will be manually input as the optimal clusters for the K-means algorithm.

#### IBM SPSS Modeller Stream

<img width="684" alt="Cluster Model Stream" src="https://github.com/Md-Khid/K_Means_Clustering/assets/160820522/8938ea13-85c3-4cba-a8c0-d6d27f28af37">


#### Cluster Results

![Model summary for K](https://github.com/Md-Khid/K_Means_Clustering/assets/160820522/2815547e-8a69-4565-9491-df076115a3af)

Based on the model summary, the generated cluster groupings have a reasonable cluster quality of 0.5. Despite this reasonable cluster quality, it can be observed that there are three distinct cluster groupings produced for the cluster results for both the 2021 and 2022 combined datasets. With an adequate number of cluster groupings and distinct cluster sizes generated by the algorithm, the study will continue to assess its findings using the K-means results.

For 2021 cluster groupings, it can be seen that 75.7% of the countries are in Cluster 1 (Low Covid-19 risk), 5.4% in Cluster 2 (Moderate Covid-19 risk) and 18.9% in Cluster 3 (High Covid-19 risk). 

For 2022 cluster groupings, 73% of the countries are in Cluster 1 (Low Covid-19 risk), 24.3% in Cluster 2 (Moderate Covid-19 risk) and 2.7% in Cluster 3 (High Covid-19 risk).

#### Predictor of Importance


![Importance predictors for Yr](https://github.com/Md-Khid/K_Means_Clustering/assets/160820522/9be25061-c23d-461b-b799-441d27796a96)


In addition to the observation, it can be seen that the predictors for the 2021 and 2022 cluster groupings have different levels of importance. This could be because of the half-year data employed for the 2022 dataset. Nevertheless, the major predictors for both datasets can be attributed to variables such as Infant Mortality Rate, Chronic Obstructive Pulmonary Disease, Female Smokers and the Percentage Ratio of Total Cases to Population.

#### Cluster Table

Based on the cluster [table](https://github.com/Md-Khid/K_Means_Clustering/tree/main/K-Means%20Cluster%20Results%20with%20IBM%20SPSS%20Modeller), countries in the high-income level group (4), namely Singapore, Switzerland, Japan and Germany have consistently maintained their respective cluster groupings for both years. This could be indicative of their effective responses to national policy changes and robust health systems that meet global healthcare standards. Contrarily, countries in the upper middle-income level (3) are transitioning from the Cluster 3 groupings to the Cluster 2 groupings, demonstrating that governments in countries like China, Malaysia and Thailand are actively working to implement better national policies and strengthen their national health systems.

<img width="502" alt="3" src="https://github.com/Md-Khid/K_Means_Clustering/assets/160820522/074edf66-5130-4178-90bc-5364b7c4211d">

However, Bahrain stands out as an exception in this regard. Despite belonging to the high-income level, the country has been transitioning from Cluster 1 to Cluster 3 groupings for the past year. A closer examination of the model results reveals that Bahrain's national policies and strategies may not be as effective as those of the other countries in the cluster groupings.

#### Cell Distribution Index


![Picture17](https://github.com/Md-Khid/K_Means_Clustering/assets/160820522/ba5ab7d8-6b12-43c6-b89d-21d06b12b445)

#### US-CDC Travel Notice for Bahrain

![Picture18](https://github.com/Md-Khid/K_Means_Clustering/assets/160820522/b6f52379-f71a-4a26-b58c-b6ad7c1b1975)


In regards to its policy stringency, Bahrain has been lagging, such as with delayed government responses to school closures, workplace closures and travel bans. Furthermore, global healthcare norms and security have not been adequately adhered to, such as a lack of a reliable healthcare system to treat the sick and protect healthcare workers from the virus. This is further evidenced by the current COVID-19 warning alert issued by the US Centers for Disease Control and Prevention for Bahrain on September 21st, 2022.

### Conclusion

Based on the clustering solutions generated, it is evident that a simple K-means clustering can effectively group countries according to their COVID-19 risk level. Even with the use of half-year data for 2022, the K-means algorithm is able to demonstrate the alteration in clustering groupings for all the countries. These basic results can be leveraged as a benchmark for other countries to compare and urge other government actors to learn, adjust and modify their national policies and strategies in accordance with their current country's development and Covid-19 risk level status.

### Discussion 
Although K-means methods provide an impressive grouping of countries' Covid-19 level risks, the user of the study may find it difficult to use in the initial stage. This is because the user must decide on the set of cluster groupings from the start and then experiment with the k-values until the most appropriate set of cluster groupings is formed. Since K-means can only be applied to numerical data, the user must be content with spherical cluster formations, which assume that each country's cluster grouping contains roughly the same number of observations.

Furthermore, obtaining the variables from an open database might present certain difficulties and limitations. Firstly, the data reported may be incomplete for each country and the data downloaded may not have been updated in recent years. Secondly, some countries may have been underreporting Covid-19 cases and deaths in the past years. Consequently, the cluster groupings that have been derived may not be a reliable reflection of the COVID-19 risk levels for some of the countries.

Despite the varying methodologies and research approaches adopted in this study, the K-means results achieved were almost consistent with the findings presented in the reviewed literature articles. The model was able to accurately analyse and detect the shift in the country's cluster groupings despite utilising a data span of six months for the year 2022. This clearly shows, as the researchers discussed in detail in their studies, that K-means can provide invaluable insights on the level of measures taken by a nation to contain the spread of COVID-19.



