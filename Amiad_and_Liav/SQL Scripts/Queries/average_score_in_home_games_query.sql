--Query 2 - This query retrieves the average score for each team in their home games.
SELECT t.team_name, AVG(gts.score) AS averageScore
FROM chashken.team t
JOIN Games g ON t.teamID = g.homeTeamID
JOIN GameTeamStats gts ON g.gameID = gts.gameID AND t.teamID = gts.teamID
GROUP BY t.team_name;