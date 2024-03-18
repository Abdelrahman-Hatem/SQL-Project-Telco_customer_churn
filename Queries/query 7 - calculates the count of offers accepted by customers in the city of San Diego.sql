SELECT 
 offer ,
  COUNT(offer) AS offer_count	
FROM
  chrun.c_ch_m
WHERE	 City = 'San Diego' and  offer <> 'None'
GROUP BY
         1
  ORDER BY 
          2  Desc;
          
          
          
          