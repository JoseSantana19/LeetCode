SELECT
    p.product_id,
    COALESCE(ROUND(SUM(p.price * us.units) / CAST(SUM(us.units) AS DECIMAL),2),0) AS average_price
FROM Prices AS p
LEFT JOIN UnitsSold AS us
    ON p.product_id = us.product_id
    AND us.purchase_date >= p.start_date
    AND us.purchase_date <= p.end_date
GROUP BY p.product_id
