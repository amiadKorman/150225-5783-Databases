CREATE TABLE Games
(
  gameID INT PRIMARY KEY,
  locationID INT NOT NULL,
  homeTeamID INT NOT NULL,
  awayTeamID INT NOT NULL,
  gameDate VARCHAR(10) NOT NULL,
  gameHour VARCHAR(10) NOT NULL,
  FOREIGN KEY (locationID) REFERENCES chashken.stadium(stadiumid),
  FOREIGN KEY (homeTeamID) REFERENCES chashken.team(teamid),
  FOREIGN KEY (awayTeamID) REFERENCES chashken.team(teamid)
);

CREATE TABLE GameTeamStats
(
	gameTeamStatsID INT PRIMARY KEY,
	gameID INT NOT NULL,
	teamID INT NOT NULL,
	score INT NOT NULL,
	rebounds INT NOT NULL,
	assists INT NOT NULL,
	blocks INT NOT NULL,
	steals INT NOT NULL,
	duration INT NOT NULL,
	isWin INT NOT NULL,
	FOREIGN KEY (gameID) REFERENCES Games(gameID),
	FOREIGN KEY (teamID) REFERENCES chashken.team(teamid)
);

CREATE TABLE Awards
(
	awardID INT PRIMARY KEY,
	winnerID INT NOT NULL,
	awardName VARCHAR(30) NOT NULL,
	isPlayer INT NOT NULL,
	isTeam INT NOT NULL,
	FOREIGN KEY (winnerID) REFERENCES liocohen.player(id)
);
