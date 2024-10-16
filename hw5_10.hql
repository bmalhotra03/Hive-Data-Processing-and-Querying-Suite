SELECT message
FROM ratings
WHERE prod_id = identified_product_id
  AND LOWER(message) LIKE '%ten times more%';