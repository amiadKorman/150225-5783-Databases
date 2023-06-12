-- 4. Select the total number of points scored in each game:
SELECT gameID, SUM(score) as total_points FROM GameTeamStats
GROUP BY gameID;
