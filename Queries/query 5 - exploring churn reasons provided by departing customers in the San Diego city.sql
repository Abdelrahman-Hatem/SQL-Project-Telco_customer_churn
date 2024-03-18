SELECT 
  `Churn Reason`,
  COUNT(CASE WHEN customer_status = 'churned' THEN 1 END) AS churned_count,
   ROUND((COUNT(CASE WHEN customer_status = 'churned' THEN 1 END) / (SELECT count(Customer_id) from chrun.c_ch_m  WHERE customer_status = 'churned' and City = 'San Diego')) * 100,2) AS churned_percentage
FROM
  chrun.c_ch_m
WHERE	 City = 'San Diego'
GROUP BY
         1
  ORDER BY 
		2 desc ;