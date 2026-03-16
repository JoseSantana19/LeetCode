SELECT name
FROM SalesPerson
WHERE name NOT IN (
  SELECT DISTINCT sp.name
  FROM Orders o
  LEFT JOIN Company c
      ON o.com_id = c.com_id
  LEFT JOIN SalesPerson sp
      ON o.sales_id = sp.sales_id
  WHERE c.name = 'RED'
)
