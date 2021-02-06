CREATE TABLE dbo.users
(
    userId INT IDENTITY (1,1) NOT NULL,
    firstName VARCHAR(35) NOT NULL,
    lastName VARCHAR(35) NOT NULL,
    Email VARCHAR(60) NOT NULL,
    uesrPassword VARCHAR(35) NOT NULL,

    CONSTRAINT pkUserId PRIMARY KEY(userId),
); 

CREATE TABLE dbo.password
(
    passwordId INT IDENTITY(1,1),
    previousPassword VARCHAR(35),
    changeDate DATETIME,
);

CREATE TABLE dbo.session
(
    sessionId INT IDENTITY(1,1) NOT NULL,
    sessionDate DATE NOT NULL,
    sessionTime DATETIME,
); 

