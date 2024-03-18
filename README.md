# Telco Customer Churn Analysis

## Introduction

Telco companies face a significant challenge in reducing customer churn, which leads to substantial costs and revenue loss. Customer churn, or attrition, refers to customers leaving the service for various reasons. Understanding and mitigating churn is crucial for maintaining a healthy customer base and ensuring business growth. This case study aims to identify key drivers of customer churn for a fictional telco company operating in California during Q3.

## Objective

The primary objective of this analysis is to identify factors influencing customer churn, enabling the telco company to develop targeted retention strategies. By leveraging demographic, location, service-related, and satisfaction data, insights into customer behavior and preferences will be gained to reduce churn rates.

## Data Overview

- **The Telco customer churn data module is composed of 5 tables:**

    - Demographics
    - Location
    - Population
    - Services
    - Status

- **These tables are separated into multiple files:**

    - ```Telco_customer_churn_demographics.xlsx```
    - ```Telco_customer_churn_location.xlsx```
    - ```Telco_customer_churn_population.xlsx```
    - ```Telco_customer_churn_services.xlsx```
    - ```Telco_customer_churn_status.xlsx```
 
These tables provide a rich source of information about each customer, including personal details, geographical location, service subscriptions, and satisfaction metrics. Additionally, the data includes churn-related attributes such as Churn Score, Churn Category, CLTV, and Churn Reason.
I gated 	the dataset from IBM Telco Customer Churn, and before delving into the interesting world of data analysis, I used a specific Power Query feature in Excel to combine multiple sheets. Next, I performed data cleaning procedures, removing columns that I considered unnecessary for the analytical project. I performed all data analysis using SQL (MySQL Workbench 8.0 CE), and all the SQL codes will be provided below. The visualizations were designed with Excel.


##  The Uml Diagram:
![image](https://github.com/Abdelrahman-Hatem/Excel-Project-Telco_customer_churn/assets/60587162/76cb6a1c-25c2-40cf-ab45-1cc1908256f9)



## Methodology

1. **Understanding Distribution**
   - Explanation of "Churned," "Joined," and "Stayed" statuses.
   
2. **Churn Categorization**
   - Analysis of churn reasons and categories provided by departing customers.
   - Percentage distribution of churn across categories.
   
3. **Geographical Impact**
   - Analysis of customer churn based on location (city).
   - Exploration of regions with higher churn rates and correlations with churn reasons.
   
4. **Demographic Analysis**
   - Exploration of the influence of demographics (gender, age, senior citizen status) on churn.
   - Identification of patterns among customers with higher churn rates based on demographic characteristics.
   
5. **Service Subscription Patterns**
   - Evaluation of the impact of various services on churn, including contract duration, payment method, and offers.
   
6. **Satisfaction Score and Churn Score**
   - Examination of the relationship between satisfaction scores and churn rates.
  
   ## 1 -	Understanding Distribution
  What does the "Churned," "Joined," and "Stayed" terminology represent in the context of customer status?
  ![image](https://github.com/Abdelrahman-Hatem/SQL-Project-Telco_customer_churn/assets/60587162/10a016fa-41ec-4b5f-bf83-c351de14b034)

![image](https://github.com/Abdelrahman-Hatem/SQL-Project-Telco_customer_churn/assets/60587162/c9d7f3e5-4233-42e3-b97d-15d8e23c077f)

#### The overall churn rate stands at 26.54%, a figure that appears relatively elevated.

## 2 - Churn Categorization:

- Analyze the reasons behind customer churn by exploring churn reason and reasons provided by departing customers.

![image](https://github.com/Abdelrahman-Hatem/SQL-Project-Telco_customer_churn/assets/60587162/de92491f-f5bc-4360-bad1-699c058292dd)
![image](https://github.com/Abdelrahman-Hatem/SQL-Project-Telco_customer_churn/assets/60587162/29c5e2f7-235a-4577-88b4-371fa5e967ad)
![image](https://github.com/Abdelrahman-Hatem/SQL-Project-Telco_customer_churn/assets/60587162/e63b1002-976d-4ee3-a59c-379ae2d5dc62)


The top three reasons are:
- Competitor made better offer
- Competitor had better devices
- Attitude of support person


### Take a closer look by analyzing the percentage distribution of churn across various categories.
![image](https://github.com/Abdelrahman-Hatem/SQL-Project-Telco_customer_churn/assets/60587162/358bb1d1-f361-492a-9008-e32eb2f0d563)
![image](https://github.com/Abdelrahman-Hatem/SQL-Project-Telco_customer_churn/assets/60587162/1fa0dd6d-378f-4135-b95e-eee7d864a4cd)
![image](https://github.com/Abdelrahman-Hatem/SQL-Project-Telco_customer_churn/assets/60587162/33605e96-0ba1-4350-875d-1cf07f1963a3)

- Close to half of the customers who are churning can be attributed to the competitor category.



## 3 - Geographical Impact:
- Analyze specific regions exhibit higher churn rate.

![image](https://github.com/Abdelrahman-Hatem/SQL-Project-Telco_customer_churn/assets/60587162/69fa0d29-1d50-44fa-9a05-c0087804f8b0)
  
![image](https://github.com/Abdelrahman-Hatem/SQL-Project-Telco_customer_churn/assets/60587162/5d6e0536-fead-4c6a-90ae-6d8b47fc96f6)

![image](https://github.com/Abdelrahman-Hatem/SQL-Project-Telco_customer_churn/assets/60587162/530807ba-10da-463b-ac7a-ed0abb60975e)

We see the largest number of customers churn in the San Diego counted 185, then Los Angeles counted 78.
