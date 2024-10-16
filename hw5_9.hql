SELECT ngram
FROM (
    SELECT EXPLODE(NGRAMS(SENTENCES(LOWER(message)), 3, 5)) AS ngram
    FROM ratings
    WHERE prod_id = identified_product_id
) a
GROUP BY ngram
ORDER BY COUNT(*) DESC
LIMIT 5;