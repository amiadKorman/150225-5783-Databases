--Query 6 - This query retrieves the teams that have never won an award.
SELECT t.team_name
FROM chashken.team t
LEFT JOIN Awards a ON t.teamID = a.winnerID AND a.isTeam = 1
WHERE a.awardID IS NULL;