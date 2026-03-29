SELECT p.product_id,
       ifnull(round(SUM(u.units * p.price) / sum(u.units),2), 0) as average_price
FROM Prices p
LEFT JOIN UnitsSold u
on p.product_id = u.product_id 
AND purchase_date between start_date and end_date
GROUP BY p.product_id;