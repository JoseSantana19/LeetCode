SELECT
  query_name,
  ROUND(AVG(rating/CAST(position AS DECIMAL)),2) AS quality,
  ROUND(SUM(CASE WHEN rating < 3 THEN 1 ELSE 0 END)/CAST(COUNT(*) AS DECIMAL)*100,2) AS poor_query_percentage
FROM Queries
GROUP BY query_name
