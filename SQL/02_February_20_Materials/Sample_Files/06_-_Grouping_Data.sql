CREATE TABLE cmarra.grouping_data(
	ID INT,
	DepartmentID INT,
	EmployeeID INT,
	EmployeeName NVARCHAR(25)
)
GO

INSERT INTO cmarra.grouping_data(ID,DepartmentID,EmployeeID,EmployeeName)
VALUES (1,5500,1234,'Sally')

INSERT INTO cmarra.grouping_data(ID,DepartmentID,EmployeeID,EmployeeName)
VALUES (2,4400,5555,'Tom')

INSERT INTO cmarra.grouping_data(ID,DepartmentID,EmployeeID,EmployeeName)
VALUES (3,3300,3434,'Joe')

INSERT INTO cmarra.grouping_data(ID,DepartmentID,EmployeeID,EmployeeName)
VALUES (4,2200,2424,'Sue')

INSERT INTO cmarra.grouping_data(ID,DepartmentID,EmployeeID,EmployeeName)
VALUES (5,2200,2626,'Nancy')

INSERT INTO cmarra.grouping_data(ID,DepartmentID,EmployeeID,EmployeeName)
VALUES (6,5500,6767,'Harold')

INSERT INTO cmarra.grouping_data(ID,DepartmentID,EmployeeID,EmployeeName)
VALUES (7,4400,7777,'Steve')

INSERT INTO cmarra.grouping_data(ID,DepartmentID,EmployeeID,EmployeeName)
VALUES (8,3300,9999,'Kate')

INSERT INTO cmarra.grouping_data(ID,DepartmentID,EmployeeID,EmployeeName)
VALUES (9,5500,8080,'Molly')
GO

-- 1. GROUP BY
SELECT
	DepartmentID
FROM
	cmarra.grouping_data
ORDER BY
	DepartmentID

SELECT
	DepartmentID
FROM
	cmarra.grouping_data
GROUP BY
	DepartmentID
ORDER BY
	DepartmentID

-- 2. SELECT DISTINCT
SELECT DISTINCT
	DepartmentID
FROM
	cmarra.grouping_data
ORDER BY
	DepartmentID
	
-- 2. SELECT DISTINCT
SELECT
	DepartmentID,
	COUNT(*) as [Total]
FROM
	cmarra.grouping_data
GROUP BY
	DepartmentID
ORDER BY
	DepartmentID

GO
-- SELECT * FROM cmarra.grouping_data