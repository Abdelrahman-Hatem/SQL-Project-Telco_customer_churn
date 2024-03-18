SELECT `Churn Category`, 
COUNT(Customer_ID) AS customer_count,
ROUND((COUNT(`Churn Category`) / (SELECT count(Customer_id) from chrun.c_ch_m  WHERE `Churn Reason` <> '')) * 100, 2)  AS `Percentage %`
FROM chrun.c_ch_m
WHERE `Churn Reason` <> ''
GROUP BY 1
ORDER BY 3 DESC;
