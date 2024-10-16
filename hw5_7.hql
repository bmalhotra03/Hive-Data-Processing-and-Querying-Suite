SELECT c.cust_id
FROM customers c
LEFT JOIN orders o 
ON c.cust_id = o.cust_id
WHERE o.order_id IS NULL;