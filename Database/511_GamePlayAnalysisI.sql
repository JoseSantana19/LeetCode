SELECT player_id, event_date as first_login
FROM (
  SELECT *,
    ROW_NUMBER() OVER(PARTITION BY player_id ORDER BY event_date ASC) AS rn
  FROM activity
)
WHERE rn = 1
