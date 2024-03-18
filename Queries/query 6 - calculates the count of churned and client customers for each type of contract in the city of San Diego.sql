SELECT 
 Contract,
  COUNT(CASE WHEN customer_status = 'churned' THEN 1 END) AS churned_count	,
  COUNT(CASE WHEN customer_status = 'client' THEN 1 END) AS client_count
FROM
  chrun.c_ch_m
WHERE	 City = 'San Diego'
GROUP BY
         1
  ORDER BY 
          2  Desc;