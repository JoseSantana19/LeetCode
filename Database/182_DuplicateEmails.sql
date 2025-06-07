SELECT DISTINCT email AS Email
FROM Person
WHERE email IN (
    SELECT email
    FROM Person
    GROUP BY email
    HAVING Count(*) > 1
)
