# Write your MySQL query statement below
WITH first AS (
    SELECT product_id, MIN(YEAR) as first_year
    FROM SALES 
    GROUP BY product_id
)
SELECT s.product_id,
       f.first_year,
       s.quantity,
       s.price
FROM sales s
JOIN first f
  ON s.product_id = f.product_id
 AND s.year = f.first_year;