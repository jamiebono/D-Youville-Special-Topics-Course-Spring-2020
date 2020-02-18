CREATE TABLE cmarra.querying_data(
	ID INT,
	DataName NVARCHAR(100),
	DataValue INT,
	AddDate DATE
)
GO

INSERT INTO cmarra.querying_data(ID,DataName,DataValue,AddDate)
VALUES (1,'Sample 5',5,'2020-02-01')

INSERT INTO cmarra.querying_data(ID,DataName,DataValue,AddDate)
VALUES (2,'Sample 10',10, '2020-01-01')
GO
INSERT INTO cmarra.querying_data(ID,DataName,DataValue,AddDate)
VALUES (3,'Sample 15',15, '2020-02-02')
GO
INSERT INTO cmarra.querying_data(ID,DataName,DataValue,AddDate)
VALUES (4,'Sample 25',25, '2020-02-19')
GO
INSERT INTO cmarra.querying_data(ID,DataName,DataValue,AddDate)
VALUES (5,'Sample 50',50, '2020-02-01')
GO

-- 1. SELECT (*)
SELECT
	*
FROM
	cmarra.querying_data
GO

-- 1.b. SELECT COLUMN
SELECT
	DataName,
	DataValue
FROM
	cmarra.querying_data
GO

-- 2. SELECT TOP
SELECT TOP 1
	DataName,
	DataValue
FROM
	cmarra.querying_data
GO

-- 3. COLUMN aliases
SELECT
	ID as UniqueID,
	DataName,
	DataValue
FROM
	cmarra.querying_data
GO

-- SELECT * FROM cmarra.querying_data
