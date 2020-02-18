CREATE TABLE cmarra.filtering_data(
	ID INT,
	DataName NVARCHAR(100),
	DataValue INT,
	AddDate DATE
)
GO

INSERT INTO cmarra.filtering_data(ID,DataName,DataValue,AddDate)
VALUES (1,'Test Sample 5',5,'2020-02-01')

INSERT INTO cmarra.filtering_data(ID,DataName,DataValue,AddDate)
VALUES (2,'Our Sample 10',10, '2020-01-01')
GO
INSERT INTO cmarra.filtering_data(ID,DataName,DataValue,AddDate)
VALUES (3,'Her Sample 15',15, '2020-02-02')
GO
INSERT INTO cmarra.filtering_data(ID,DataName,DataValue,AddDate)
VALUES (4,'Their Sample Test 25',25, '2020-02-19')
GO
INSERT INTO cmarra.filtering_data(ID,DataName,DataValue,AddDate)
VALUES (5,'His Sample 50',50, '2020-02-01')
GO

-- 1. WHERE CLAUSE
SELECT
	*
FROM
	cmarra.filtering_data
WHERE
	DataValue > 10
	
-- 1b. WHERE CLAUSE (not equal)
SELECT
	*
FROM
	cmarra.filtering_data
WHERE
	DataValue <> 10
	
-- 2. WHERE CLAUSE - AND
SELECT
	*
FROM
	cmarra.filtering_data
WHERE
	DataValue > 10
	AND AddDate > '2020-02-01'
	
-- 3. WHERE CLAUSE - OR
SELECT
	*
FROM
	cmarra.filtering_data
WHERE
	DataValue < 10
	OR DataValue >= 50
	
-- 4. WHERE CLAUSE - BETWEEN
SELECT
	*
FROM
	cmarra.filtering_data
WHERE
	DataValue BETWEEN 10 AND 30
	
-- 5. WHERE CLAUSE - LIKE
SELECT
	*
FROM
	cmarra.filtering_data
WHERE
	DataName LIKE '%Test%'
	
-- 5b. WHERE CLAUSE - LIKE - STARTS WITH
SELECT
	*
FROM
	cmarra.filtering_data
WHERE
	DataName LIKE 'Test%'

-- 5c. WHERE CLAUSE - LIKE - ENDS WITH
SELECT
	*
FROM
	cmarra.filtering_data
WHERE
	DataName LIKE '%5'
GO

-- SELECT * FROM cmarra.filtering_data
