CREATE OR REPLACE FUNCTION CalculatePlayerAvgPoints(playerID INT) RETURN NUMBER IS
  totalPoints NUMBER;
  gameCount NUMBER;
  avgPoints NUMBER;
BEGIN
  SELECT SUM(score) INTO totalPoints
  FROM GameTeamStats
  WHERE teamID = playerID;

  SELECT COUNT(*) INTO gameCount
  FROM GameTeamStats
  WHERE teamID = playerID;

  IF gameCount > 0 THEN
    avgPoints := totalPoints / gameCount;
  ELSE
    avgPoints := 0;
  END IF;

  RETURN avgPoints;
END;
