-- 1. Select all games that were played on a certain date:
SELECT * FROM Games
WHERE gameDate = '26/11/2022';
--------------------------------------------------------------

-- 2. Select the team that won a particular game:
SELECT teamID FROM GameTeamStats
WHERE gameID = 219 AND isWin = 1;
--------------------------------------------------------------

-- 3. Select the number of games played by each team:
SELECT teamID, COUNT(*) as games_played FROM GameTeamStats
GROUP BY teamID;
--------------------------------------------------------------

-- 4. Select the total number of points scored in each game:
SELECT gameID, SUM(score) as total_points FROM GameTeamStats
GROUP BY gameID;
--------------------------------------------------------------

-- 5. Select all games where the home team won:
SELECT * FROM Games
WHERE gameID IN (SELECT gameID FROM GameTeamStats WHERE isWin = 1 AND teamID = homeTeamID);
--------------------------------------------------------------

-- 6. Select all players who have won awards:
-- SELECT Players.* FROM Players
-- INNER JOIN Awards ON Players.id = Awards.winnerID
-- WHERE Awards.isPlayer = TRUE;
--------------------------------------------------------------

-- 7. Select the team with the most rebounds in a particular game:
SELECT teamID, rebounds FROM GameTeamStats 
WHERE gameID = 240
ORDER BY rebounds DESC 
FETCH FIRST 1 ROW ONLY;
--------------------------------------------------------------

-- 8. Select the most common award won by teams:
SELECT awardName, COUNT(*) as num_wins FROM Awards
WHERE isTeam = 1
GROUP BY awardName
ORDER BY num_wins DESC
FETCH FIRST 1 ROW ONLY;