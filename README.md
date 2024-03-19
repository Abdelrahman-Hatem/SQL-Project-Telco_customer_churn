# Telco Customer Churn Analysis

## Introduction

- Telco companies face a significant challenge in reducing customer churn, which leads to substantial costs and revenue loss. Customer churn, or attrition, refers to customers leaving the service for various reasons. Understanding and mitigating churn is crucial for maintaining a healthy customer base and ensuring business growth. This case study aims to identify key drivers of customer churn for a fictional telco company operating in California during Q3.

[![MySQL Workbench](https://img.shields.io/badge/MySQL%20Workbench-4479A1?style=for-the-badge&logo=mysql&logoColor=white)](https://www.mysql.com/products/workbench/)
![Excel](https://img.shields.io/badge/Microsoft%20Excel-217346.svg?style=for-the-badge&logo=Microsoft-Excel&logoColor=white) 


## Objective

- The primary objective of this analysis is to identify factors influencing customer churn, enabling the telco company to develop targeted retention strategies. By leveraging demographic, location, service-related, and satisfaction data, insights into customer behavior and preferences will be gained to reduce churn rates.

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

**You can know more about the dataset here:** 

[Telco customer churn (11.1.3+)](https://www.kaggle.com/datasets/ylchang/telco-customer-churn-1113)


## Tools Used:
- MySQL Workbench: Used for database management, including schema design, query writing, and data manipulation.
- Excel: Used for creating additional charts and graphs to complement the data analysis. 

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
  
  
![image](https://github.com/Abdelrahman-Hatem/SQL-Project-Telco_customer_churn/assets/60587162/8b963e3b-1515-4b3d-89b1-43e988e53c3b)

![image](https://github.com/Abdelrahman-Hatem/SQL-Project-Telco_customer_churn/assets/60587162/c9d7f3e5-4233-42e3-b97d-15d8e23c077f)

#### The overall churn rate stands at 26.54%, a figure that appears relatively elevated.

## 2 - Churn Categorization:

- Analyze the reasons behind customer churn by exploring churn reason and reasons provided by departing customers.

![image](https://github.com/Abdelrahman-Hatem/SQL-Project-Telco_customer_churn/assets/60587162/9e7ac080-a6c7-45be-85db-181d0c76361c)

![image](https://github.com/Abdelrahman-Hatem/SQL-Project-Telco_customer_churn/assets/60587162/ad2b08f2-2e61-4f29-b7ef-d2dd0e57b0e4)


The top three reasons are:
- Competitor made better offer
- Competitor had better devices
- Attitude of support person


### Take a closer look by analyzing the percentage distribution of churn across various categories.

![image](https://github.com/Abdelrahman-Hatem/SQL-Project-Telco_customer_churn/assets/60587162/afeeeb24-ffa3-4c5d-a60a-c7c7f594c713)

![image](https://github.com/Abdelrahman-Hatem/SQL-Project-Telco_customer_churn/assets/60587162/33605e96-0ba1-4350-875d-1cf07f1963a3)

- Close to half of the customers who are churning can be attributed to the competitor category.



## 3 - Geographical Impact:
- Analyze specific regions exhibit higher churn rate.

    
![image](https://github.com/Abdelrahman-Hatem/SQL-Project-Telco_customer_churn/assets/60587162/96917ae9-b97c-4791-bdcf-940ff7a5912e)

![image](https://github.com/Abdelrahman-Hatem/SQL-Project-Telco_customer_churn/assets/60587162/530807ba-10da-463b-ac7a-ed0abb60975e)

- We see the largest number of customers churn in the San Diego counted 185, then Los Angeles counted 78.


### Take a closer look by exploring churn reasons provided by departing customers in the San Diego city.


![image](https://github.com/Abdelrahman-Hatem/SQL-Project-Telco_customer_churn/assets/60587162/28520b5c-3a64-4ae4-b0d6-c492f86f479f)

- Approximately 79% of customers churned due to the competitor offering a more attractive deal.

#### will Examine in detail the reasons for churn  by Contract type and type of offers
![image](https://github.com/Abdelrahman-Hatem/SQL-Project-Telco_customer_churn/assets/60587162/35e7cd3c-17c2-4823-a4f7-fa3ca279b59a)



#### offers
![image](https://github.com/Abdelrahman-Hatem/SQL-Project-Telco_customer_churn/assets/60587162/bd0bffc7-a5f4-4494-8a1f-24cd63f0c85c)

- Approximately 65% of customers churned month-to-month contracts and Offer E will most common in this city  



## 4 - Demographic Analysis: 

#### - count of churned and client customers for each age classification

![image](https://github.com/Abdelrahman-Hatem/SQL-Project-Telco_customer_churn/assets/60587162/cc669279-40af-4cb1-946f-11d28477dba1)


![image](https://github.com/Abdelrahman-Hatem/SQL-Project-Telco_customer_churn/assets/60587162/36e4fb2a-8131-4749-9ae5-b8b9110dfe46)


- The count of churn for  Middle-Aged Adults is around 1051 that appears relatively elevated.

- The churn rate for senior citizens exceeds the average by approximately 18%.



## 5 -  Service Subscription Patterns:
### Payment Method:
- Analyze the impact of payment method to have churn customer?
  
![image](https://github.com/Abdelrahman-Hatem/SQL-Project-Telco_customer_churn/assets/60587162/dd41c425-d587-467a-a441-9ccadb0c7290)

![image](https://github.com/Abdelrahman-Hatem/SQL-Project-Telco_customer_churn/assets/60587162/06b9a9b8-671a-41f5-900b-8654498825b7)

- Bank Withdrawal stands out as the primary payment method for both churned and retained customers, emphasizing its widespread usage.
- Credit Card usage exhibits a significant churn rate, signaling a potential area for improvement and targeted retention strategies.
- Although its lower usage, Mailed Checks noteworthy churn rate raises concerns and warrants further examination.

### Contract Distribution 


![image](https://github.com/Abdelrahman-Hatem/SQL-Project-Telco_customer_churn/assets/60587162/64474a63-5efb-4e76-b293-1591af49be9c)

![image](https://github.com/Abdelrahman-Hatem/SQL-Project-Telco_customer_churn/assets/60587162/061b2929-231c-4396-bf07-c62e0bf5b066)


### count of customers for each contract type


![image](https://github.com/Abdelrahman-Hatem/SQL-Project-Telco_customer_churn/assets/60587162/d2bf8568-22e3-4775-b399-538f040c4093)

![image](https://github.com/Abdelrahman-Hatem/SQL-Project-Telco_customer_churn/assets/60587162/fa10a77e-172a-4920-96c7-3aebe36a6940)


The highest churn rate, reaching 46%, is observed among customers with month-to-month contracts, indicating that 46% of customers under this contract type discontinued the service. In contrast, the churn rate is lower for one-year contracts, standing at 11%, and even lower for two-year contracts, with a rate of 2.5%


### Satisfaction Score and Churn Score:

- Examine the relationship between satisfaction scores and churn rates?

![image](https://github.com/Abdelrahman-Hatem/SQL-Project-Telco_customer_churn/assets/60587162/f2fa2b9b-84bb-443d-8b9d-1e18682ca639)


#### Overall Insights:
- The cumulative satisfaction scores for stayed customers far outnumber those of churned and joined customers.
- The concentration of lower scores among churned customers highlights potential areas of concern or improvement in service quality.
- The positive satisfaction distribution for joined and stayed customers indicates a generally content customer base in these categories.

### What is the overall distribution of customer status (Churned, Joined, Stayed) across different types of offers and Which offer has the highest and lowest overall customer count?


![image](https://github.com/Abdelrahman-Hatem/SQL-Project-Telco_customer_churn/assets/60587162/a0dce314-55c2-4271-84c6-b00a40f4aa1c)

![image](https://github.com/Abdelrahman-Hatem/SQL-Project-Telco_customer_churn/assets/60587162/c58753ef-424b-4dda-821b-57ce57a7d66c)

 #### Overall Insights:
- Offers B and D seem to have a higher presence among both joined and stayed customers.
- Offer E stands out as having a notable impact on churn.


## Results:

#### Understanding Distribution:
The three-month customer data indicates significant dynamics within the company's customer base:
- **Churned Customers**: Account for 26.54% of the total customer base, indicating a notable departure rate.
- **New Customer Acquisition**: Stands at 6.45%, indicating some growth in the customer base.
- **Staying Customers**: Represent the majority at 67.02%, reflecting a stable core customer base.

#### Churn Categorization:
- **Competitor Category**: Close to half of the churned customers can be attributed to competitors, indicating strong competition in the market.
- **Primary Reasons for Churn**:
 - The competitor made a better offer.
 - The competitor had better devices.
 - Attitude of support person.

#### Geographical Analysis:
- **Regions with Higher Churn**: 
  - San Diego: 185 churned customers.
  - Los Angeles: 78 churned customers.
  - Indicates areas where churn is more prevalent, potentially influenced by local market dynamics or competition.

#### Demographic Impact:
- **Payment Method**:
  - **Bank Withdrawal**: Dominates as the primary payment method for both churned and retained customers, highlighting its widespread usage.
  - **Credit Card Usage**: Exhibits a significant churn rate, suggesting potential areas for improvement and targeted retention strategies.
  - **Mailed Checks**: Despite lower usage, noteworthy churn rates raise concerns and require further examination.


#### Contract Impact:
- Customers with month-to-month contracts exhibit the highest churn rate at 46%, indicating a significant proportion of churn among this group.
- Churn rates decrease for longer contract durations, with one-year contracts at 11% and two-year contracts at 2.5%.

#### Satisfaction Score and Churn Score:
- Cumulative satisfaction scores are higher among stayed customers compared to churned and joined customers.
- Lower satisfaction scores are concentrated among churned customers, indicating potential areas for service quality improvement.

## Recommendations:

#### 1. Targeted Marketing:
- **Develop Targeted Campaigns:** Create marketing campaigns tailored to high-churn regions, leveraging insights from geographical analysis. Personalized offers and promotions can incentivize customers to stay and attract new ones.
- **Segmented Messaging:** Segmented Messaging: To guarantee relevancy and efficacy, divide up client communications based on demographics, preferences, and historical activity.

#### 2. Enhanced Customer Engagement:
- **Improve Customer Support:** Investing in the training of customer care representatives and setting up effective routes of communication will improve customer support services. Customer satisfaction can be considerably increased by promptly resolving issues.
- **Loyalty Programs:** Introduce loyalty programs to reward long-term customers and encourage retention. Exclusive perks and benefits can incentivize customers to remain loyal to the brand.
- **Personalized Service Bundles:** Offer personalized service bundles tailored to individual customer needs and preferences. Providing flexibility and customization can enhance perceived value and reduce churn.

#### 3. Regular Customer Feedback:
- **Implement Feedback Mechanisms:** Establish channels for gathering regular feedback from customers, such as surveys, feedback forms, or interactive platforms. Actively listen to customer concerns and suggestions to identify areas for improvement.
- **Adaptation to Evolving Needs:** Continuously monitor and adapt to evolving customer needs and preferences. Stay agile and responsive to market trends and changes in customer behavior to maintain competitiveness.


## Conclusion:

This case study provides a comprehensive analysis of customer churn in a fictional telco company, offering actionable insights for reducing churn rates. By understanding the interplay of demographics, location, services, and satisfaction metrics, the telco company can strategically position itself to enhance customer retention, fostering long-term success in a competitive market.

     


