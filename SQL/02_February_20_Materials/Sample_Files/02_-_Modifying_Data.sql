CREATE TABLE cmarra.modifying_data(
	ID INT,
	DataName NVARCHAR(100),
	AddDate DATE
)
GO

INSERT INTO cmarra.modifying_data(ID,DataName,AddDate)
VALUES (1,'Test Record','2020-02-01')

INSERT INTO cmarra.modifying_data(ID,DataName,AddDate)
VALUES (2,'Sample Data','2020-01-01')
GO

-- 2. UPDATE
UPDATE cmarra.modifying_data
SET
	DataName = 'Test Record - modified'
WHERE
	ID = 1
GO

-- 3. DELETE
DELETE 
	cmarra.modifying_data
WHERE
	ID = 2
GO

-- SELECT * FROM cmarra.modifying_data