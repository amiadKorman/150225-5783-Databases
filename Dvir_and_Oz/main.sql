CREATE TABLE Throws
(
  type Jump shot, Layup, Dunk, Hook shot, Free throw, Bank shot, Fadeaway shot, Turnaround shot NOT NULL,
  location Three-point line, Mid-range, Free throw line, Layup area, Post area, Perimeter NOT NULL,
  match_ID INT NOT NULL,
  time DATE NOT NULL,
  score 0,1,2,3 NOT NULL,
  Thrower_ID INT NOT NULL,
  Throw_ID INT NOT NULL,
  PRIMARY KEY (Throw_ID)
);

CREATE TABLE Team_Manager
(
  ID INT NOT NULL,
  Fname VARCHAR(20) NOT NULL,
  Lname VARCHAR(20) NOT NULL,
  birth_date DATE NOT NULL,
  team_ID INT NOT NULL,
  PRIMARY KEY (ID),
  UNIQUE (team_ID)
);

CREATE TABLE Coach_Helper
(
  ID INT NOT NULL,
  Fname VARCHAR(20) NOT NULL,
  Lname VARCHAR(20) NOT NULL,
  birth_date DATE NOT NULL,
  team_ID INT NOT NULL,
  PRIMARY KEY (ID)
);