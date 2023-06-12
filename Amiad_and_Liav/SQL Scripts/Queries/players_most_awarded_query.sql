--Query 8 - This query retrieves the first 5 players who won the most awards.
SELECT p.fname, p.lname, COUNT(a.awardID) AS awardCount
FROM liocohen.player p
JOIN Awards a ON p.id = a.winnerID AND a.isPlayer = 1
GROUP BY p.fname, p.lname
ORDER BY awardCount DESC
FETCH FIRST 5 ROW ONLY;