-- 2. Select the team that won a particular game:
SELECT teamID FROM GameTeamStats
WHERE gameID = 219 AND isWin = 1;
