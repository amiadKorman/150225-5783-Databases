-- Query 1 - This query retrieves the total number of games played by each team.
SELECT t.team_name, COUNT(g.gameID) AS totalGames
FROM chashken.team t
LEFT JOIN Games g ON t.teamID = g.homeTeamID OR t.teamID = g.awayTeamID
GROUP BY t.team_name;