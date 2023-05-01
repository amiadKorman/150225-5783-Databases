CREATE TABLE Judge
(
  ID INT NOT NULL,
  Fname VARCHAR(20) NOT NULL,
  Lname VARCHAR(20) NOT NULL,
  age INT NOT NULL,
  gender VARCHAR(20) NOT NULL,
  nationality VARCHAR(2) NOT NULL,
  experience INT NOT NULL,
  matches INT NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE Coach
(
  ID INT NOT NULL,
  Fname VARCHAR(20) NOT NULL,
  Lname VARCHAR(20) NOT NULL,
  age INT NOT NULL,
  gender VARCHAR(20) NOT NULL,
  nationality VARCHAR(3) NOT NULL,
  experience INT NOT NULL,
  matches INT NOT NULL,
  wins INT NOT NULL,
  losses INT NOT NULL,
  awards INT NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE Player
(
  ID INT NOT NULL,
  Fname VARCHAR(20) NOT NULL,
  Lname VARCHAR(20) NOT NULL,
  age INT NOT NULL,
  gender VARCHAR(20) NOT NULL,
  nationality VARCHAR(3) NOT NULL,
  experience INT NOT NULL,
  matches INT NOT NULL,
  wins INT NOT NULL,
  losses INT NOT NULL,
  awards INT NOT NULL,
  weight INT NOT NULL,
  height INT NOT NULL,
  position VARCHAR(2) NOT NULL,
  number INT NOT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (ID) REFERENCES Coach(ID)
);
