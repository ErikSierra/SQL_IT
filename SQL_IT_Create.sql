---- Create Departments Table
--CREATE TABLE Departments (
--    DepartmentID INT PRIMARY KEY,
--    DepartmentName VARCHAR(255) NOT NULL,
--    HeadPersonID INT,
--    FOREIGN KEY (HeadPersonID) REFERENCES Persons(PersonID)
--);

---- Create Teams Table
--CREATE TABLE Teams (
--    TeamID INT PRIMARY KEY,
--    TeamName VARCHAR(255) NOT NULL,
--    DepartmentID INT,
--    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
--);

---- Create Persons Table
--CREATE TABLE Persons (
--    PersonID INT PRIMARY KEY,
--    FirstName VARCHAR(255),
--    LastName VARCHAR(255),
--    Email VARCHAR(255),
--    RoleID INT,
--    Location VARCHAR(255),
--    FOREIGN KEY (RoleID) REFERENCES Roles(RoleID)
--);

---- Create Roles Table
--CREATE TABLE Roles (
--    RoleID INT PRIMARY KEY,
--    RoleName VARCHAR(255) NOT NULL
--);

---- Create TeamMembers Table
--CREATE TABLE TeamMembers (
--    PersonID INT,
--    TeamID INT,
--    PRIMARY KEY (PersonID, TeamID),
--    FOREIGN KEY (PersonID) REFERENCES Persons(PersonID),
--    FOREIGN KEY (TeamID) REFERENCES Teams(TeamID)
--);

---- Create Managers Table
--CREATE TABLE Managers (
--    PersonID INT,
--    TeamID INT,
--    PRIMARY KEY (PersonID, TeamID),
--    FOREIGN KEY (PersonID) REFERENCES Persons(PersonID),
--    FOREIGN KEY (TeamID) REFERENCES Teams(TeamID)
--);

--CREATE VIEW DepartmentTeams AS
--SELECT
--	d.DepartmentName,
--	t.TeamName,
--	CONCAT(p.FirstName, ' ',p.LastName) AS TeamManager
--FROM Teams t
--JOIN Departments d ON t.DepartmentID = d.DepartmentID
--LEFT JOIN Managers m ON t.TeamID = m.TeamID
--LEFT JOIN Persons p ON m.PersonID = p.PersonID;

--CREATE TABLE DatabaseDescription (
--    DatabaseName varchar(255) NOT NULL,
--    DbOwner varchar(255),
--    Description text,
--    DatabaseType varchar(255),
--    StorageSize float,
--    LastUpdated timestamp NOT NULL,
--    LastUpdatedBy varchar(255)
--);

--EXEC sp_rename 'DatabaseDescription.StorageSize', 'StorageSizeMB', 'COLUMN';
--ALTER TABLE DatabaseDescription ALTER COLUMN StorageSizeMB float -- Size in megabytes (MB)
