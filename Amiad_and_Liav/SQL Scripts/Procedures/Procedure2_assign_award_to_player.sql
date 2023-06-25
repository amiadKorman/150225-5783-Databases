CREATE OR REPLACE PROCEDURE AssignAwardToPlayer(playerID IN INT, awardName IN VARCHAR2)
AS
BEGIN
  INSERT INTO Awards (awardID, winnerID, awardName, isPlayer, isTeam)
  VALUES (award_sequence.NEXTVAL, playerID, awardName, 1, 0);
  COMMIT;
END;
