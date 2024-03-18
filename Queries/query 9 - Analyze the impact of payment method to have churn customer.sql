SELECT 
 `Payment Method`,
  COUNT(CASE WHEN customer_status = 'churned' THEN 1 END) AS churned_count	,
  COUNT(CASE WHEN customer_status = 'client' THEN 1 END) AS client_count,
   COUNT(CASE WHEN customer_status IN ('churned', 'client') THEN 1 END) AS total_count
FROM
  chrun.c_ch_m

GROUP BY
         1
  ORDER BY 
          4  Desc;