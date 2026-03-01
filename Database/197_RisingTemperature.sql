SELECT id
FROM (SELECT *,
  LAG(recordDate) OVER(ORDER BY recordDate ASC) AS lastRecordDate,
  (recordDate - INTERVAL '1 day')::DATE AS lastDay,
  LAG(temperature) OVER(ORDER BY recordDate ASC) AS lastTemperature
  FROM weather)
WHERE temperature > lastTemperature
  AND lastRecordDate = lastDay
