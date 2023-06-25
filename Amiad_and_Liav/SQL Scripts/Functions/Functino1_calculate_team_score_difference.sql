CREATE OR REPLACE PROCEDURE CalculateTeamScoreDifference(p_teamID IN INT) IS
  v_homeScore INT;
  v_awayScore INT;
  v_scoreDifference INT;
BEGIN
  -- Calculate the score difference for the specified team
  SELECT SUM(CASE
               WHEN g.homeTeamID = p_teamID THEN gts.score
               ELSE 0
             END) - SUM(CASE
                          WHEN g.awayTeamID = p_teamID THEN gts.score
                          ELSE 0
                        END)
  INTO v_scoreDifference
  FROM akorman.games g
  JOIN akorman.gameteamstats gts ON g.gameID = gts.gameID
  WHERE g.homeTeamID = p_teamID OR g.awayTeamID = p_teamID;

  -- Display the score difference for the team
  DBMS_OUTPUT.PUT_LINE('Team ID: ' || p_teamID);
  DBMS_OUTPUT.PUT_LINE('Score Difference: ' || v_scoreDifference);
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    DBMS_OUTPUT.PUT_LINE('Team not found.');
END;
