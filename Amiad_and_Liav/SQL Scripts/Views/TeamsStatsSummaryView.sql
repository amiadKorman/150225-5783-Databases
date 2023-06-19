CREATE VIEW TeamStatsSummary AS
SELECT gts.teamID, t.team_name, SUM(gts.score) AS totalPoints, SUM(gts.rebounds) AS totalRebounds, SUM(gts.assists) AS totalAssists
FROM GameTeamStats gts
JOIN chashken.team t ON gts.teamID = t.teamid
GROUP BY gts.teamID, t.team_name;