
SELECT DISTINCT item FROM (
  SELECT buyer, item, DENSE_RANK() OVER (ORDER BY item DESC) AS RANK
  FROM item_bought
) AS subquery
WHERE RANK = 1;