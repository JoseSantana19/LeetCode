WITH cte as (
    SELECT *,
        ROW_NUMBER() OVER(PARTITION BY email ORDER BY id ASC) as rn
    FROM Person
)
DELETE
FROM Person
WHERE id IN (
    SELECT id
    FROM cte
    WHERE rn <> 1
)
