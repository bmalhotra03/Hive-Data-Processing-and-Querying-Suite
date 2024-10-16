SELECT COUNT(DISTINCT o.cust_id)
FROM orders o
JOIN order_details od 
ON o.order_id = od.order_id
JOIN products p 
ON od.prod_id = p.prod_id
GROUP BY o.cust_id
HAVING SUM(p.price) > 300000;