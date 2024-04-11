SELECT * FROM Departments;
SELECT * FROM Teams;
SELECT * FROM Managers;
SELECT * FROM TeamMembers;
SELECT * FROM DepartmentTeams;

SELECT
	t.TeamName,
	d.DepartmentName,
	CONCAT(p.FirstName, ' ', p.LastName) AS TeamManager
FROM Managers m
JOIN Persons p ON m.PersonID = p.PersonID
JOIN Teams t ON m.TeamID = t.TeamID
JOIN Departments d ON t.DepartmentID = d.DepartmentID;

