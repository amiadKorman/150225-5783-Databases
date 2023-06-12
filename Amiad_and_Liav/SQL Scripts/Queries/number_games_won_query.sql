--Query 4 - This query retrieves the number of games won by each team.
SELECT t.team_name, COUNT(gts.isWin) AS totalWins
FROM chashken.team t
JOIN GameTeamStats gts ON t.teamID = gts.teamID AND gts.isWin = 1
GROUP BY t.team_name;