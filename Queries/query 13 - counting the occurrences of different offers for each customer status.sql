SELECT 
  `Customer Status`,
  COUNT(CASE WHEN Offer = 'Offer A' THEN 1 END) AS `A`	,
  COUNT(CASE WHEN Offer = 'Offer B' THEN 1 END) AS `B`	,
  COUNT(CASE WHEN Offer = 'Offer C' THEN 1 END) AS `C`	,
  COUNT(CASE WHEN Offer = 'Offer D' THEN 1 END) AS `D`	,
  COUNT(CASE WHEN Offer = 'Offer E' THEN 1 END) AS `E`	,
  count(CASE When Offer IN ('Offer A','Offer B','Offer C','Offer D','Offer E') THEN 1 END) AS TOTAL
FROM
  chrun.c_ch_m
GROUP BY
         1
