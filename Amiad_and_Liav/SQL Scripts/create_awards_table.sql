CREATE TABLE Awards
(
awardID INT PRIMARY KEY,
winnerID INT NOT NULL,
awardName VARCHAR(30) NOT NULL,
isPlayer INT NOT NULL,
isTeam INT NOT NULL,
FOREIGN KEY (winnerID) REFERENCES liocohen.player(id)
);
