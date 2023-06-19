CREATE VIEW TeamStandings AS
SELECT t.team_name,
       COUNT(CASE WHEN gts.isWin = 1 THEN 1 END) AS wins,
       COUNT(CASE WHEN gts.isWin = 0 THEN 1 END) AS losses,
       SUM(gts.score) AS totalPoints
FROM chashken.team t
LEFT JOIN GameTeamStats gts ON t.teamID = gts.teamID
GROUP BY t.team_name
ORDER BY wins DESC, losses ASC, totalPoints DESC;