CREATE VIEW TeamSchedule AS
SELECT g.gameID, g.gameDate, g.locationID, t.team_name AS homeTeam, t2.team_name AS awayTeam
FROM Games g
JOIN chashken.team t ON g.homeTeamID = t.teamID
JOIN chashken.team t2 ON g.awayTeamID = t2.teamID
WHERE g.gameDate >= (SELECT MAX(gameDate) - INTERVAL '30' DAY FROM Games)
ORDER BY g.gameDate DESC;