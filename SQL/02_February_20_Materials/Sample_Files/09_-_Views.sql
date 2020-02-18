CREATE TABLE cmarra.employee_data(
	ID INT,
	DepartmentID INT,
	EmployeeID INT,
	EmployeeName NVARCHAR(25)
)
GO

INSERT INTO cmarra.employee_data(ID,DepartmentID,EmployeeID,EmployeeName)
VALUES (1,5500,1234,'Sally')

INSERT INTO cmarra.employee_data(ID,DepartmentID,EmployeeID,EmployeeName)
VALUES (2,4400,5555,'Tom')

INSERT INTO cmarra.employee_data(ID,DepartmentID,EmployeeID,EmployeeName)
VALUES (3,3300,3434,'Joe')

INSERT INTO cmarra.employee_data(ID,DepartmentID,EmployeeID,EmployeeName)
VALUES (4,2200,2424,'Sue')

INSERT INTO cmarra.employee_data(ID,DepartmentID,EmployeeID,EmployeeName)
VALUES (5,2200,2626,'Nancy')

INSERT INTO cmarra.employee_data(ID,DepartmentID,EmployeeID,EmployeeName)
VALUES (6,5500,6767,'Harold')

INSERT INTO cmarra.employee_data(ID,DepartmentID,EmployeeID,EmployeeName)
VALUES (7,4400,7777,'Steve')

INSERT INTO cmarra.employee_data(ID,DepartmentID,EmployeeID,EmployeeName)
VALUES (8,3300,9999,'Kate')

INSERT INTO cmarra.employee_data(ID,DepartmentID,EmployeeID,EmployeeName)
VALUES (9,5500,8080,'Molly')

INSERT INTO cmarra.employee_data(ID,DepartmentID,EmployeeID,EmployeeName)
VALUES (9,9900,5542,'Howard')
GO

CREATE TABLE cmarra.department_data(
	ID INT,
	DepartmentName NVARCHAR(50)
)

INSERT INTO cmarra.department_data(ID,DepartmentName)
VALUES(2200,'Information Technology')

INSERT INTO cmarra.department_data(ID,DepartmentName)
VALUES(3300,'Human Resources')

INSERT INTO cmarra.department_data(ID,DepartmentName)
VALUES(4400,'Business Development')

INSERT INTO cmarra.department_data(ID,DepartmentName)
VALUES(5500,'Management')

INSERT INTO cmarra.department_data(ID,DepartmentName)
VALUES(6600,'Outsourcing')
GO

-- 1. CREATE VIEW (FILTERED DATA)
CREATE VIEW cmarra.management_view 
AS

SELECT
	DepartmentID,
	EmployeeID,
	EmployeeName
FROM
	cmarra.employee_data
WHERE
	DepartmentID = 5500
GO

SELECT * FROM cmarra.management_view
GO

-- 1b. CREATE VIEW (INNER JOIN)
CREATE VIEW cmarra.department_view 
AS

SELECT
	DepartmentID,
	DepartmentName,
	EmployeeID,
	EmployeeName
FROM
	cmarra.employee_data emp
	INNER JOIN
	cmarra.department_data d
		ON d.ID = emp.DepartmentID
GO

SELECT * FROM cmarra.department_view
GO

-- SELECT * FROM cmarra.employee_data
-- SELECT * FROM cmarra.department_data
