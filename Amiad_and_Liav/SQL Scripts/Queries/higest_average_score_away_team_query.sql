--Query 5 - This query retrieves the team with the highest average score in away games.
SELECT t.team_name, AVG(gts.score) AS averageScore
FROM chashken.team t
JOIN Games g ON t.teamID = g.awayTeamID
JOIN GameTeamStats gts ON g.gameID = gts.gameID AND t.teamID = gts.teamID
GROUP BY t.team_name
ORDER BY averageScore DESC
FETCH FIRST 1 ROW ONLY;