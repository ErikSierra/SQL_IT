# SQL_IT
## IT Directory using SQL

**Disclaimer**: The information in the SQL and Excel files is for testing and demonstration purposes only. It is entirely fictitious, representing no actual individuals or organizations. Any resemblance to real persons, living or dead, is coincidental.

### Overview
This SQL database models the hierarchy and organizational structure of an IT department. Below are the details of the tables included and their relationships.

### Tables

#### Departments
- **Columns**:
  - `DepartmentID` (PK)
  - `DepartmentName`
  - `HeadPersonID` (FK)
- **Primary Key**: `DepartmentID`
- **Foreign Key**: `HeadPersonID` references `PersonID` in the Persons table.

#### Teams
- **Columns**:
  - `TeamID` (PK)
  - `TeamName`
  - `DepartmentID` (FK)
- **Primary Key**: `TeamID`
- **Foreign Key**: `DepartmentID` references `DepartmentID` in the Departments table.

#### Persons
- **Columns**:
  - `PersonID` (PK)
  - `FirstName`
  - `LastName`
  - `Email`
  - `RoleID` (FK)
  - `Location`
- **Primary Key**: `PersonID`
- **Foreign Key**: `RoleID` references `RoleID` in the Roles table.

#### Roles
- **Columns**:
  - `RoleID` (PK)
  - `RoleName`
- **Primary Key**: `RoleID`

#### TeamMembers
- **Columns**:
  - `PersonID` (FK)
  - `TeamID` (FK)
- **Composite Primary Key**: `(PersonID, TeamID)`
- **Foreign Keys**:
  - `PersonID` references `PersonID` in the Persons table.
  - `TeamID` references `TeamID` in the Teams table.

#### Managers
- **Columns**:
  - `PersonID` (FK)
  - `TeamID` (FK)
- **Composite Primary Key**: `(PersonID, TeamID)`
- **Foreign Keys**:
  - `PersonID` references `PersonID` in the Persons table.
  - `TeamID` references `TeamID` in the Teams table.

### Diagrams
For visual representation of the database structure, see the links below:
- ![Database Diagram 1](https://github.com/ErikSierra/SQL_IT/assets/120680439/f9f70b78-9b13-4608-a505-7d46e08ce6f7)
- ![Database Diagram 2](https://github.com/ErikSierra/SQL_IT/assets/120680439/3239842a-93c1-4580-b4e0-adbb1375afa2)
