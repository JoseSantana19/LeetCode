SELECT
    name,
    COALESCE(SUM(distance),0) AS travelled_distance
FROM Users AS a
LEFT JOIN Rides AS b
    ON a.id = b.user_id
GROUP BY name, a.id
ORDER BY
    travelled_distance DESC,
    name ASC
