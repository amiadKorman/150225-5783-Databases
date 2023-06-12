-- 5. Select all games where the home team won:
SELECT * FROM Games
WHERE gameID IN (SELECT gameID FROM GameTeamStats WHERE isWin = 1 AND teamID = homeTeamID);
