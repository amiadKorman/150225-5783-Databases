--Query 8 - This query retrieves the top 10 stadiums with the highest number of games played.
SELECT s.stadium_name, COUNT(g.gameID) AS gameCount
FROM chashken.stadium s
JOIN Games g ON s.stadiumID = g.locationID
GROUP BY s.stadium_name
ORDER BY gameCount DESC
FETCH FIRST 10 ROWS ONLY;