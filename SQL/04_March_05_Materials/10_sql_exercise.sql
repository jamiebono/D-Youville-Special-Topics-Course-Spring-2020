
-- DROP PROCEDURE cmarra.sp_FindEstimatedPopulationByCounty
CREATE PROCEDURE cmarra.sp_FindEstimatedPopulationByCounty

    @intMeasureID INT,
    @intYear INT

AS
BEGIN


--Using a temp table, 
CREATE TABLE #tmpMedianIncome(
    [year] NVARCHAR(100),
    [fips] NVARCHAR(100),
    [state] NVARCHAR(100),
    county NVARCHAR(100),
    [value] DECIMAL(18,10)
)

--for the top county with the highest "Median Household Income"
INSERT INTO #tmpMedianIncome(
    [year],
    fips,
    [state],
    county,
    [value]
)
SELECT TOP 1
    [year],
    fips,
    [state],
    county,
    [value]
FROM
    dbo.acs_profile_data
WHERE
    measure_id = @intMeasureID
    AND [year] = @intYear
    AND county IS NOT NULL
ORDER BY
    [value] DESC

-- based on the data from #3, what is the IRS estimated population for this county?
SELECT 
    t.fips,
    t.county,
    t.[state],
    t.[year],
    SUM(z.irs_estimated_population_2015) as county_estimated_population
FROM 
    #tmpMedianIncome t
    INNER JOIN
    dbo.county_fips_codes cfc
        ON cfc.FIPS = t.fips
    INNER JOIN
    dbo.zip_code_database Z 
        ON Z.county = cfc.[Name]
        AND Z.[state] = cfc.state
GROUP BY
    t.fips,
    t.county,
    t.[state],
    t.[year]

DROP TABLE #tmpMedianIncome

END