CREATE TABLE GameTeamStats
(
gameTeamStatsID INT PRIMARY KEY,
gameID INT NOT NULL,
teamID INT NOT NULL,
score INT NOT NULL,rebounds INT NOT NULL,
assists INT NOT NULL,blocks INT NOT NULL,
steals INT NOT NULL,duration INT NOT NULL,
isWin INT NOT NULL,
FOREIGN KEY (gameID) REFERENCES Games(gameID),
FOREIGN KEY (teamID) REFERENCES chashken.team(teamid)
);

