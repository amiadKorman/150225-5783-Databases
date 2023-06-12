CREATE TABLE Games
(
 gameID INT PRIMARY KEY,
 locationID INT NOT NULL,
 homeTeamID INT NOT NULL,
 awayTeamID INT NOT NULL,
 gameDate DATE NOT NULL,
 FOREIGN KEY (locationID) REFERENCES chashken.stadium(stadiumid),
 FOREIGN KEY (homeTeamID) REFERENCES chashken.team(teamid),
 FOREIGN KEY (awayTeamID) REFERENCES chashken.team(teamid)
);
