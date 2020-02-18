CREATE TABLE cmarra.sorting_data(
	ID INT,
	DataName NVARCHAR(100),
	DataValue INT,
	AddDate DATE
)
GO

INSERT INTO cmarra.sorting_data(ID,DataName,DataValue,AddDate)
VALUES (1,'Sample 5',5,'2020-02-01')

INSERT INTO cmarra.sorting_data(ID,DataName,DataValue,AddDate)
VALUES (2,'Sample 10',10, '2020-01-01')
GO
INSERT INTO cmarra.sorting_data(ID,DataName,DataValue,AddDate)
VALUES (3,'Sample 15',15, '2020-02-02')
GO
INSERT INTO cmarra.sorting_data(ID,DataName,DataValue,AddDate)
VALUES (4,'Sample 25',25, '2020-02-19')
GO
INSERT INTO cmarra.sorting_data(ID,DataName,DataValue,AddDate)
VALUES (5,'Sample 50',50, '2020-02-01')
GO

-- 1. ORDER BY
SELECT
	*
FROM
	cmarra.sorting_data
ORDER BY
	DataValue

-- 1.b ORDER BY DESC
SELECT
	*
FROM
	cmarra.sorting_data
ORDER BY
	DataValue DESC

-- 1.c ORDER BY DATE
SELECT
	*
FROM
	cmarra.sorting_data
ORDER BY
	AddDate DESC
GO

-- SELECT * FROM cmarra.sorting_data
