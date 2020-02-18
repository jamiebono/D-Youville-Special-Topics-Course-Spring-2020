CREATE TABLE cmarra.aggregate_functions(
	ID INT,
	CourseID INT,
	GolferID INT,
	Score DECIMAL (5,1)
)
GO

INSERT INTO cmarra.aggregate_functions(ID,CourseID,GolferID,Score)
VALUES (1,5,2424,76)
GO
INSERT INTO cmarra.aggregate_functions(ID,CourseID,GolferID,Score)
VALUES (2,5,2424,78)
GO
INSERT INTO cmarra.aggregate_functions(ID,CourseID,GolferID,Score)
VALUES (3,5,2424,81)
GO
INSERT INTO cmarra.aggregate_functions(ID,CourseID,GolferID,Score)
VALUES (4,5,2424,72)
GO
INSERT INTO cmarra.aggregate_functions(ID,CourseID,GolferID,Score)
VALUES (5,10,2424,74)
GO
INSERT INTO cmarra.aggregate_functions(ID,CourseID,GolferID,Score)
VALUES (6,10,2424,75)
GO
INSERT INTO cmarra.aggregate_functions(ID,CourseID,GolferID,Score)
VALUES (7,5,4555,72)
GO
INSERT INTO cmarra.aggregate_functions(ID,CourseID,GolferID,Score)
VALUES (8,5,4555,76)
GO
INSERT INTO cmarra.aggregate_functions(ID,CourseID,GolferID,Score)
VALUES (9,5,4555,77)
GO
INSERT INTO cmarra.aggregate_functions(ID,CourseID,GolferID,Score)
VALUES (10,10,4555,75)
GO
INSERT INTO cmarra.aggregate_functions(ID,CourseID,GolferID,Score)
VALUES (11,10,4555,72)
GO
INSERT INTO cmarra.aggregate_functions(ID,CourseID,GolferID,Score)
VALUES (2,10,4555,78)
GO

-- 1. COUNT
SELECT
	COUNT(*) as Total
FROM
	cmarra.aggregate_functions
	
-- 1b. COUNT by golfer
SELECT
	GolferID,
	COUNT(*) as Total
FROM
	cmarra.aggregate_functions
GROUP BY
	GolferID

-- 2. AVG
SELECT
	AVG(Score) as Average
FROM
	cmarra.aggregate_functions
	
-- 2b. AVG by course
SELECT
	CourseID,
	AVG(Score) as Average
FROM
	cmarra.aggregate_functions
GROUP BY
	CourseID
	
-- 2c. AVG by course/golfer
SELECT
	CourseID,
	GolferID,
	AVG(Score) as Average
FROM
	cmarra.aggregate_functions
GROUP BY
	CourseID,
	GolferID

-- 3. MAX
SELECT
	CourseID,
	GolferID,
	MAX(Score) as Max_Score
FROM
	cmarra.aggregate_functions
GROUP BY
	CourseID,
	GolferID
	
-- 3. MIN
SELECT
	CourseID,
	GolferID,
	MAX(Score) as Max_Score,
	MIN(Score) as Min_Score
FROM
	cmarra.aggregate_functions
GROUP BY
	CourseID,
	GolferID
	
-- 4. SUM
SELECT
	CourseID,
	GolferID,
	SUM(Score) as Total_Strokes
FROM
	cmarra.aggregate_functions
GROUP BY
	CourseID,
	GolferID
	
-- 5. HAVING
SELECT
	CourseID,
	GolferID,
	AVG(Score) as Average
FROM
	cmarra.aggregate_functions
GROUP BY
	CourseID,
	GolferID
HAVING
	AVG(Score) > 75

GO
-- select * from cmarra.aggregate_functions