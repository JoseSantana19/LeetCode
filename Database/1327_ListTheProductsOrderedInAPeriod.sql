SELECT
    product_name,
    SUM(unit) AS unit
FROM Orders AS o
LEFT JOIN Products AS p
    ON o.product_id = p.product_id
WHERE order_date >= '2020-02-01' AND order_date < '2020-03-01'
GROUP BY product_name
HAVING SUM(unit) >= 100
