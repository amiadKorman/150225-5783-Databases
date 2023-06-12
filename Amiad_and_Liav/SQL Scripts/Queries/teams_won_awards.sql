-- 6. Select all teams who have won awards:
SELECT chashken.team.teamid, chashken.team.team_name FROM chashken.team
INNER JOIN Awards ON chashken.team.teamid = Awards.winnerID
WHERE Awards.isTeam = 1;
