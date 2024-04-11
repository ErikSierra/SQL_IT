--INSERT INTO Departments (DepartmentID, DepartmentName, HeadPersonID)
--SELECT DepartmentID, DepartmentName, HeadPersonID FROM Departments1;
-- Insert data from Teams1 to Teams

--INSERT INTO Teams (TeamID, TeamName, DepartmentID)
--SELECT TeamID, TeamName, DepartmentID FROM Teams1;

-- Insert data from Persons1 to Persons
--INSERT INTO Persons (PersonID, FirstName, LastName, Email, RoleID, Location)
--SELECT PersonID, FirstName, LastName, Email, RoleID, Location FROM Persons1;

-- Insert data from Roles1 to Roles
--INSERT INTO Roles (RoleID, RoleName)
--SELECT RoleID, RoleName FROM Roles1;

-- Insert data from TeamMembers1 to TeamMembers
--INSERT INTO TeamMembers (PersonID, TeamID)
--SELECT PersonID, TeamID FROM TeamMembers1;

-- Insert data from Managers1 to Managers
--INSERT INTO Managers (PersonID, TeamID)
--SELECT PersonID, TeamID FROM Managers1;

--INSERT INTO DatabaseDescription (DatabaseName, DbOwner, Description, DatabaseType, StorageSizeMB)
--VALUES
--(
--    'SQL_IT',
--    'Erik Sierra',
--    'This database is like a central hub where an organization can store information about their employees and teams they work in.\n\nIt allows them to keep track of things like department names, team names, roles, and basic employee information like name and contact details.\n\nThe database has four tables that are all connected to each other, so that information can be easily accessed and updated.\n\nIt also has two special tables that help the organization to keep track of who is a team member or a manager of a certain team.\n\nOverall, this database helps organizations stay organized and manage their personnel and team data efficiently.',
--    'SQL Server',
--    16
--);

--UPDATE DatabaseDescription SET Description = 'This database is like a central hub where an organization can store information about their employees and teams they work in.
--    It allows them to keep track of things like department names, team names, roles, and basic employee information like name and contact details.
--    The database has four tables that are all connected to each other, so that information can be easily accessed and updated.
--    It also has two special tables that help the organization to keep track of who is a team member or a manager of a certain team.
--    Overall, this database helps organizations stay organized and manage their personnel and team data efficiently.' WHERE DatabaseName = 'SQL_IT';