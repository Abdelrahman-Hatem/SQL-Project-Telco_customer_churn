SELECT 
  `Customer Status`,
  COUNT(CASE WHEN `Satisfaction Score` = 1 THEN 1 END) AS `1`,
  COUNT(CASE WHEN `Satisfaction Score` = 2 THEN 1 END) AS `2`,
  COUNT(CASE WHEN `Satisfaction Score` = 3 THEN 1 END) AS '3',
  COUNT(CASE WHEN `Satisfaction Score` = 4 THEN 1 END) AS '4',
  COUNT(CASE WHEN `Satisfaction Score` = 5 THEN 1 END) AS '5'
-- count(CASE When `Satisfaction Score` IN (1, 2, 3, 4, 5,) THEN 1 END) AS TOTAL
FROM
  chrun.c_ch_m
GROUP BY
  1;

         