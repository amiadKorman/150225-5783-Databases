CREATE VIEW UpcomingGames AS
SELECT g.gameID, g.gameDate, g.locationID, t1.team_name AS homeTeam, t2.team_name AS awayTeam
FROM Games g
JOIN chashken.team t1 ON g.homeTeamID = t1.teamID
JOIN chashken.team t2 ON g.awayTeamID = t2.teamID
WHERE g.gameDate > CURRENT_DATE
ORDER BY g.gameDate ASC;