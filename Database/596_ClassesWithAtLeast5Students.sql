With Contagem AS (
SELECT class, COUNT(*) AS qt
FROM Courses
GROUP BY class
)
SELECT class
FROM Contagem
WHERE qt >= 5
