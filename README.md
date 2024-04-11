# SQL_IT
IT Directory using the coding language SQL

***"Please note that the information contained in the SQL and Excel files provided is purely for testing and demonstration purposes only. The data presented does not represent any actual individuals or organizations, and are purely fictitious. Any resemblance to real persons, living or dead, is purely coincidental."***

This sql database is used to represent the hiearchy and organizational structure within an IT department. 
I have defined the different tables and their relatations to each other within the database
*****************************************************************************************************************************************************************************************************************
Departments Table
Columns:
DepartmentID (PK)
DepartmentName
HeadPersonID (FK)
Primary Key: DepartmentID
Foreign Key: HeadPersonID references PersonID in the Persons table.

Teams Table
Columns:
TeamID (PK)
TeamName
DepartmentID (FK)
Primary Key: TeamID
Foreign Key: DepartmentID references DepartmentID in the Departments table.

Persons Table
Columns:
PersonID (PK)
FirstName
LastName
Email
RoleID (FK)
Location
Primary Key: PersonID
Foreign Key: RoleID references RoleID in the Code table (presumably named Roles in actuality).

Roles Table
Columns:
RoleID (PK)
RoleName
Primary Key: RoleID

TeamMembers Table
Columns:
PersonID (FK)
TeamID (FK)
Primary Key: None specified in the diagram, but it should be a composite key of (PersonID, TeamID).
Foreign Keys:
PersonID references PersonID in the Persons table.
TeamID references TeamID in the Teams table.

Managers Table
Columns:
PersonID (FK)
TeamID (FK)
Primary Key: None specified in the diagram, but it should be a composite key of (PersonID, TeamID).
Foreign Keys:
PersonID references PersonID in the Persons table.
TeamID references TeamID in the Teams table.

For each foreign key, there is an implied reference to the primary key of the corresponding table. The TeamMembers and Managers tables should have composite primary keys because they represent many-to-many relationships. Each of these tables joins two other tables on their primary keys, enabling you to map persons to teams either as members or as managers."

![image](https://github.com/ErikSierra/SQL_IT/assets/120680439/f9f70b78-9b13-4608-a505-7d46e08ce6f7)

![image](https://github.com/ErikSierra/SQL_IT/assets/120680439/3239842a-93c1-4580-b4e0-adbb1375afa2)


