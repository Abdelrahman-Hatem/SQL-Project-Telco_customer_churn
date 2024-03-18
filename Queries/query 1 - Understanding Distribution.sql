SELECT `Customer Status`, 
COUNT(Customer_ID) AS customer_count,
ROUND((COUNT(`Customer Status`) / (SELECT count(Customer_id) from chrun.c_ch_m )) * 100, 2)  AS `Percentage %`
FROM chrun.c_ch_m
GROUP BY 1;