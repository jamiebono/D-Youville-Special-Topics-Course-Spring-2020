-- 1. CREATE TABLE
CREATE TABLE cmarra.data_example(
	Column1 INT,
	Column2 NVARCHAR(10),
	Column3 DATETIME2
)
GO

-- 2. ALTER TABLE ADD column
ALTER TABLE cmarra.data_example
ADD Column4 NVARCHAR(10)
GO

-- 3. ALTER TABLE ALTER column
ALTER TABLE cmarra.data_example
ALTER COLUMN Column1 BIGINT
GO

-- 4. ALTER TABLE DROP column
ALTER TABLE cmarra.data_example
DROP COLUMN Column4
GO

-- 5. DROP TABLE
DROP TABLE cmarra.data_example
GO

-- SELECT * FROM cmarra.data_example