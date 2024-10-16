SELECT COUNT(*)
FROM orders o
JOIN order_details od 
ON o.order_id = od.order_id
WHERE o.cust_id = 1071189;