# Project Overview

## Introduction
The objective of this study is to conduct an in-depth analysis to determine countries' groupings based on COVID-19 level risk through the use of the K-means clustering method. The study will demonstrate the use of proprietary software tools such as IBM SPSS Modeller, JMP Statistical Software and MS Excel to accurately group countries based on their risk level by employing the most effective clustering strategies using two distinct time periods and selecting the most suitable variables. Guided by the Cross Industry Standard Process for Data Mining (CRISP-DM) methodology, the study aims to derive valuable insights through techniques such as exploratory data analysis (EDA) and clustering modelling for country grouping based on their COVID-19 risk levels.

## Data Understanding and Preparation
The extracted data are combined into a single Microsoft Excel file by utilising the v-lookup function to retrieve the necessary variables contained in the downloaded dataset. An additional variable titled 'Percentage Ratio of Total Cases to Total Population' will be generated to acquire the percentage value of COVID-19 occurrences. This variable will be used in the study to reflect the number of infection cases per population within a country. For the purpose of simplicity in the study, only countries with full data for the years 2021 and 2022 will be chosen for the analysis (see combined dataset [here](https://github.com/Md-Khid/COVID-19_Country_Grouping/tree/main/Combined%20Dataset)). Given the study was conducted in late 2022, only data from January to June 2022 representing half of the year was accessible. 
Based on this preparatory stage, the study has identified a total of 37 countries to be used in the clustering method. 

## Data Exploration
#### Total Vaccinations Per Hundred Yr.2020

In this section, the study will demonstrate the significant rise in the number of countries that have commenced their vaccination per 100 people since 2020. During the initial stages of the virus outbreak, it can be observed that only Bahrain and Israel had begun vaccinating their populations.

![Picture1](https://github.com/Md-Khid/K_Means_Clustering/assets/160820522/e77dce0c-8dde-44e8-9e60-60c43625cdce)

#### Total Vaccinations Per Hundred Yr.2021

By the year 2021, only six countries - Bahrain, Chile, Denmark, Malta, Singapore and Uruguay - had begun to actively raise their total vaccination rate to 200 per hundred people. This means that, by that point each person in the population had received approximately two doses of vaccinations.

<img width="1433" alt="Picture2" src="https://github.com/Md-Khid/K_Means_Clustering/assets/160820522/416fcb62-edb2-47dc-baf3-ef2314b19296">

#### Total Vaccinations Per Hundred Yr.2022

By the year 2022, it is estimated that 68% of the 37 countries had begun to raise their total vaccination rate to over 200 vaccinations per hundred people. However, only two of the remaining 12 countries (i.e. Bulgaria and Zimbabwe) had achieved a total vaccination rate of less than 100 vaccinations per hundred people. This means that most people in that population had yet to receive a single dose of vaccination.

<img width="1435" alt="Picture3" src="https://github.com/Md-Khid/K_Means_Clustering/assets/160820522/7fa7aa3b-836e-4878-96f6-b3669f4e0a21">

#### GDP per capita Yr.2021

In this section, the study will illustrate the correlation between Total Vaccinations per hundred and a country’s GDP per capita. It can be seen in 2021 that there is a strong association between the total vaccinations and the country's GDP per capita. Therefore, one will likely conclude that the higher the country's GDP per capita, the higher the total vaccination rate per hundred people.

<img width="1094" alt="Picture4" src="https://github.com/Md-Khid/K_Means_Clustering/assets/160820522/23067959-64cd-4ff9-bf1d-73bf3d9df6a8">

#### GDP per capita Yr.2022

A closer examination reveals, however, that the rise in total vaccinations per hundred people in the population may not be directly correlated to the nation's GDP per capita. Despite a steady GDP per capita in 2022, the number of total vaccinations per hundred is consistently on the rise shifting to the right. This could suggest that the majority of countries studied are committed to providing their populations with a minimum of two doses of vaccination per hundred individuals regardless of their GDP levels.

<img width="1090" alt="Picture5" src="https://github.com/Md-Khid/K_Means_Clustering/assets/160820522/7d4aa214-d707-4e4b-9bcb-6e1b02abeffe">

#### Country Characteristics and Disease Burden for the Years 2021 & 2022
For the concluding data exploration, the study will demonstrate the association between a country's location and income level and the extent of both infectious and chronic diseases. It can be seen that in lower middle-income countries such as Zimbabwe, there is a greater prevalence of infectious diseases such as HIV and AIDS whereas in upper-middle countries such as Azerbaijan, Malaysia, Thailand, Brazil and China, chronic diseases like Chronic Obstructive Pulmonary Disease (COPD) are more commonly observed. It can also be observed that both these lower and upper middle-income countries tend to demonstrate a higher prevalence of chronic diseases when compared to the high-income countries such as Bahrain, Japan and Singapore. Consequently, it is likely that the population in these countries may lack the necessary access to healthcare facilities to receive the necessary medical treatment.

<img width="1746" alt="Picture6" src="https://github.com/Md-Khid/K_Means_Clustering/assets/160820522/88b3cb0b-2557-4cbc-8421-ddfb74bfb95f">

## Data Understanding and Preparation in JMP Statistical Software 

The study shall utilise JMP Statistical Software to help generate the multicollinearity values between the variables. Multicollinearity can adversely impact the clustering algorithm by causing distortions in the weights across different clusters. This could lead to sub-optimal weights or variables potentially resulting in an inaccurate clustering solution. To overcome the issue of multicollinearity, the study will examine the Variance Inflation Factor (VIF) value generated for each variable. To achieve this, it will utilise the JMP statistical software to run a simple linear regression model.

#### VIF values for all variables

<img width="305" alt="1" src="https://github.com/Md-Khid/K_Means_Clustering/assets/160820522/a46e8c14-9efc-4412-9c6b-949e5f988846">

The study decided to retain the Total Cases, Total Deaths, Chronic Obstructive Pulmonary Disease and Infant Mortality Rate variables in the linear regression equation due to their importance for the formation of country clusters. It is noted that their high VIF values are caused by the multicollinearity effect from the 'Percentage Ratio of Total Cases to Total Population' variable. To address this matter, the study removed both the 'Population' and 'Total Cases' variables from the linear regression equation. Following the removal of the variables, it can be seen that the VIF values for all the variables are now lower than 10.

#### VIF values for all variables (after removing the affecting variable)

<img width="312" alt="2" src="https://github.com/Md-Khid/K_Means_Clustering/assets/160820522/befc298b-3578-4cf0-b891-f6152af88a1e">

## Proposed Modelling and Evaluation

#### Determine Optimal K 
The combined dataset for the years 2021 and 2022 will be fed into a Hierarchal Cluster algorithm in order to generate the cluster groupings. To determine the number of clusters, the study will input the selected variables into the JMP software and generate a dendrogram using the Hierarchical Clustering-Ward method.

### Hierarchical Cluster (Dendrogram) 

![Dendogram](https://github.com/Md-Khid/K_Means_Clustering/assets/160820522/2b93573a-1256-463f-b7d0-8c00047aa62e)

Based on the hierarchical clustering result, there are three distinct cluster groupings evident in the dendrogram chart. Hence, k=3 will be used to generate the optimal number of cluster groupings for the K-means algorithm in IBM SPSS Modeller.

#### K-Means Modelling

At this point, the study will utilise the K-means node to feed the merged dataset into the SPSS modeller stream. The study will generate cluster groupings using the default model settings and the number 3 will be manually input as the optimal clusters for the K-means algorithm.

#### Cluster Results

![Model summary for K](https://github.com/Md-Khid/K_Means_Clustering/assets/160820522/2815547e-8a69-4565-9491-df076115a3af)

Based on the model summary, the generated cluster groupings have a reasonable cluster quality of 0.5. It can also be observed that there are three distinct cluster groupings produced for the cluster results for both the 2021 and 2022 combined datasets. With an adequate number of cluster groupings and distinct cluster sizes generated by the algorithm, the study will continue to assess its findings using the K-means results.

For 2021 cluster groupings, it can be seen that 75.7% of the countries are in Cluster 1 (Low Covid-19 risk), 5.4% in Cluster 2 (Moderate Covid-19 risk) and 18.9% in Cluster 3 (High Covid-19 risk). 

For 2022 cluster groupings, 73% of the countries are in Cluster 1 (Low Covid-19 risk), 24.3% in Cluster 2 (Moderate Covid-19 risk) and 2.7% in Cluster 3 (High Covid-19 risk).

#### Cluster Table

Based on the cluster [table](https://github.com/Md-Khid/K_Means_Clustering/tree/main/K-Means%20Cluster%20Results%20with%20IBM%20SPSS%20Modeller), countries in the high-income level group (4), namely Singapore, Switzerland, Japan and Germany have consistently maintained their respective cluster groupings for both years. This could be indicative of their effective responses to national policy changes and robust health systems that meet global healthcare standards. Contrarily, countries in the upper middle-income level (3) are transitioning from the Cluster 3 groupings to the Cluster 2 groupings demonstrating that governments in countries like China, Malaysia and Thailand are actively working to implement better national policies and strengthen their national health systems.

<img width="502" alt="3" src="https://github.com/Md-Khid/K_Means_Clustering/assets/160820522/074edf66-5130-4178-90bc-5364b7c4211d">

However, Bahrain stands out as an exception in this regard. Despite belonging to the high-income level, the country has been transitioning from Cluster 1 to Cluster 3 groupings for the past year. A closer examination of the model results reveals that Bahrain's national policies and strategies may not be as effective as those of the other countries in the cluster groupings.

#### Cell Distribution Index

![Picture17](https://github.com/Md-Khid/K_Means_Clustering/assets/160820522/ba5ab7d8-6b12-43c6-b89d-21d06b12b445)

#### US-CDC Travel Notice for Bahrain

![Picture18](https://github.com/Md-Khid/K_Means_Clustering/assets/160820522/b6f52379-f71a-4a26-b58c-b6ad7c1b1975)

In regards to its policy stringency, Bahrain has been lagging such as with delayed government responses to school closures, workplace closures and travel bans. Furthermore, global healthcare norms and security have not been adequately adhered to such as a lack of a reliable healthcare system to treat the sick and protect healthcare workers from the virus. This is further evidenced by the current COVID-19 warning alert issued by the US Centers for Disease Control and Prevention for Bahrain on September 21st, 2022.

### Conclusion

Based on the clustering solutions generated, it is evident that a simple K-means clustering can effectively group countries according to their COVID-19 risk level. Even with the use of half-year data for 2022, the K-means algorithm is able to demonstrate the alteration in clustering groupings for all the countries. These basic results can be leveraged as a benchmark for other countries to compare and urge other government actors to learn, adjust and modify their national policies and strategies in accordance with their current country's development and Covid-19 risk level status.


