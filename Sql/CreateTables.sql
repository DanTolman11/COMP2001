CREATE TABLE dbo.users
(
    userId INT IDENTITY (1,1) NOT NULL,
    firstName VARCHAR(35) NOT NULL,
    lastName VARCHAR(35) NOT NULL,
    Email VARCHAR(60) NOT NULL,
    userPassword VARCHAR(35) NOT NULL,

    CONSTRAINT pkUserId PRIMARY KEY(userId),
); 

CREATE TABLE dbo.password
(
    passwordId INT IDENTITY(1,1) NOT NULL,
    previousPassword VARCHAR(35),
    changeDate DATETIME,

    CONSTRAINT pkPasswordId PRIMARY KEY(passwordId),
);


CREATE TABLE dbo.session
(
    sessionId INT IDENTITY(1,1) NOT NULL,
    sessionDate DATE NOT NULL,
    sessionTime DATETIME,

    CONSTRAINT pkSessionId PRIMARY KEY(sessionId),
); 

