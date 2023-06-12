-- 3. Select the number of games played by each team:
SELECT teamID, COUNT(*) as games_played FROM GameTeamStats
GROUP BY teamID;
