-- 8. Select the most common award won by teams:
SELECT awardName, COUNT(*) as num_wins FROM Awards
WHERE isTeam = 1
GROUP BY awardName
ORDER BY num_wins DESC
FETCH FIRST 1 ROW ONLY;
