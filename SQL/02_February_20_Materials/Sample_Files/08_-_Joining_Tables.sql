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


-- 1. INNER JOIN
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
ORDER BY
	DepartmentName,
	EmployeeName

-- 1. INNER JOIN - Aggregate
SELECT
	DepartmentName,
	COUNT(*) as Total_Employees
FROM
	cmarra.employee_data emp
	INNER JOIN
	cmarra.department_data d
		ON d.ID = emp.DepartmentID
GROUP BY
	DepartmentName
ORDER BY
	DepartmentName
	
-- 2. LEFT OUTER JOIN
SELECT
	DepartmentName,
	COUNT(emp.ID) as Total_Employees
FROM
	cmarra.department_data d
	LEFT OUTER JOIN
	cmarra.employee_data emp
		ON d.ID = emp.DepartmentID
GROUP BY
	DepartmentName
ORDER BY
	DepartmentName
	
-- 3. LEFT OUTER JOIN
SELECT
	*
FROM
	cmarra.department_data d
	RIGHT OUTER JOIN
	cmarra.employee_data emp
		ON d.ID = emp.DepartmentID
WHERE
	d.ID IS NULL
	
-- 4. SELF JOIN
SELECT
	d1.DepartmentID,
	d1.EmployeeName as First_Employee,
	d2.EmployeeName as Second_Employee
FROM
	cmarra.employee_data d1
	RIGHT OUTER JOIN
	cmarra.employee_data d2
		ON d2.DepartmentID = d1.DepartmentID
WHERE
	d1.EmployeeID <> d2.EmployeeID
ORDER BY
	d1.DepartmentID,
	d1.EmployeeName,
	d2.EmployeeID

GO
-- SELECT * FROM cmarra.employee_data
-- SELECT * FROM cmarra.department_data
