CREATE TABLE <username>.test_permission_changes(
	ID BIGINT IDENTITY(1,1) NOT NULL,
	TestColumn NVARCHAR(100)
)
GO

INSERT INTO <username>.test_permission_changes(TestColumn)
SELECT 'I should be able to see this row'
GO

SELECT * FROM <username>.test_permission_changes
GO

DELETE FROM <username>.test_permission_changes
GO

DROP TABLE <username>.test_permission_changes
GO

