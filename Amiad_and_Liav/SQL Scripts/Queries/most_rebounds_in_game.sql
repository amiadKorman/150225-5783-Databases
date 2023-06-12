-- 7. Select the team with the most rebounds in a particular game:
SELECT teamID, rebounds FROM GameTeamStats 
WHERE gameID = 240
ORDER BY rebounds DESC 
FETCH FIRST 1 ROW ONLY;
