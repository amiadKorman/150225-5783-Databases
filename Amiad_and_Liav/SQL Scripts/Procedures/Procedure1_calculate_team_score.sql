CREATE OR REPLACE PROCEDURE CalculateTeamPoints(teamID IN INT)
AS
BEGIN
  UPDATE chashken.team t
  SET t.totalPoints = (SELECT SUM(gts.score)
                       FROM GameTeamStats gts
                       WHERE gts.teamID = t.teamID)
  WHERE t.teamID = teamID;
  COMMIT;
END;
