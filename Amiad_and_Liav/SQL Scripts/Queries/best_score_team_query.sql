--Query 7 - This query retrieves the top 10 teams with the highest points, including the date and total points.
SELECT g.gameDate, t.team_name, SUM(gts.score) AS totalPoints
FROM Games g
JOIN GameTeamStats gts ON g.gameID = gts.gameID
JOIN chashken.team t ON gts.teamID = t.teamID
GROUP BY g.gameDate, t.team_name
ORDER BY totalPoints DESC
FETCH FIRST 10 ROWS ONLY;