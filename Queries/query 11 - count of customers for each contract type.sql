SELECT 
 `Contract`,
 COUNT(Customer_ID) AS customer_count

FROM
  chrun.c_ch_m

GROUP BY
         1
  ORDER BY 
          2  Desc;