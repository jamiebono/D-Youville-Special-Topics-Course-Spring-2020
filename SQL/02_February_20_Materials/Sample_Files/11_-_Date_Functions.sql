CREATE TABLE cmarra.transaction_data(
	TransactionID INT,
	TransactionValue MONEY,
	TransactionDate DATETIME
)
GO

INSERT INTO cmarra.transaction_data(TransactionID,TransactionValue,TransactionDate)
VALUES (1,110.44,'2018-02-01 12:44'),
 (2,45.25,'2019-11-21 20:20'),
 (3,78.37,'2019-12-01 11:14'),
 (4,57.67,'2020-01-11 13:15'),
 (5,24.33,'2020-02-02 10:10')
GO

-- 1. GETDATE()
SELECT GETDATE() as current_date_time

-- 2. DATEPART
SELECT
	DATEPART(YYYY,TransactionDate) as TransactionYear,
	SUM(TransactionValue) as Total
FROM
	cmarra.transaction_data
GROUP BY
	DATEPART(YYYY,TransactionDate)
ORDER BY
	DATEPART(YYYY,TransactionDate)
GO

-- 3. DATEDIFF
SELECT
	TransactionID,
	TransactionDate,
	DATEDIFF(DD,TransactionDate,GETDATE()) as Age_in_days
FROM
	cmarra.transaction_data
	
-- 4. DATEADD
SELECT
	TransactionID,
	TransactionDate,
	DATEADD(MM,1, TransactionDate) as One_Month_Out
FROM
	cmarra.transaction_data

-- select * from cmarra.transaction_data