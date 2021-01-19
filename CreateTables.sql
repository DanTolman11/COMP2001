CREATE TABLE dbo.users
(
    userId INT NOT NULL,
    firstName VARCHAR(35) NOT NULL,
    lastName VARCHAR(35) NOT NULL,
    Email VARCHAR(60) NOT NULL,
    Password VARCHAR(35) NOT NULL,

    CONSTRAINT pkUserId PRIMARY KEY(userId),
); 

CREATE TABLE dbo.password
(
    passwordId INT,
    previousPassword VARCHAR(35),
    changeDate DATETIME,
);

CREATE TABLE dbo.session
(
    sessionId INT NOT NULL,
    sessionDate DATE NOT NULL,
    sessionTime DATETIME,
);