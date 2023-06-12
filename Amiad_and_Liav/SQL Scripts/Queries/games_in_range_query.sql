--Query 3 - This query retrieves all the records from the "Games" table where the game date and time fall within the specified range.
SELECT *
FROM Games
WHERE gameDate >= TO_DATE('01-01-2023 00:00:00', 'dd-mm-yyyy hh24:mi:ss')
  AND gameDate <= TO_DATE('31-01-2023 23:59:59', 'dd-mm-yyyy hh24:mi:ss');