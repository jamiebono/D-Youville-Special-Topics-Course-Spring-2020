-- CREATE A TEMP TABLE
CREATE TABLE #tmpTemporaryFips(
	FIPS NVARCHAR(200),
	[Name] NVARCHAR(100),
	[State] NVARCHAR(100)
)

-- ADD DATA TO THAT TABLE
INSERT INTO #tmpTemporaryFips(
	FIPS,
	[Name],
	[State]
)
SELECT
	FIPS,
	[Name],
	[State]
FROM
	county_fips_codes

-- fix any fips codes where the 0 was removed
UPDATE
	#tmpTemporaryFips
SET
	FIPS = '0' + FIPS
WHERE
	LEN(FIPS) = 4

-- NOW, refind missing fips codes against the temp table
SELECT
	pd.fips,
	pd.[state]
FROM
	dbo.acs_profile_data pd
	LEFT OUTER JOIN
	#tmpTemporaryFips cfc
		ON cfc.FIPS = pd.fips
WHERE
	pd.county IS NOT NULL
	AND cfc.[Name] IS NULL
GROUP BY
	pd.fips,
	pd.[state]
ORDER BY
	pd.fips,
	pd.[state]

-- FINALLY, DROP THE TEMP TABLE WHEN YOU ARE DONE WITH IT
DROP TABLE #tmpTemporaryFips