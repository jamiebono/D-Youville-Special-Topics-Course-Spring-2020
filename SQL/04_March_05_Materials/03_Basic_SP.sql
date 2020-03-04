-- STORED PROCEDURES - BASIC SP

-- DROP PROCEDURE dbo.sp_FindMissingFipsCounties
CREATE PROCEDURE dbo.sp_FindMissingFipsCounties

AS
BEGIN

	SELECT
		pd.fips,
		pd.[state]
	FROM
		dbo.acs_profile_data pd
		LEFT OUTER JOIN
		dbo.county_fips_codes cfc
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

END
GO