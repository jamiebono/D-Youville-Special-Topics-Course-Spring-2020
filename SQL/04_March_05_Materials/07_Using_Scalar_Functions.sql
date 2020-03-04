-- TEST MY SCALAR FUNCTION

SELECT dbo.fn_GetFixedFipsCode('1213')
SELECT dbo.fn_GetFixedFipsCode('14203')

-- USE MY SCALAR FUNCTION IN A QUERY
SELECT
	pd.fips,
	pd.[state]
FROM
	dbo.acs_profile_data pd
	LEFT OUTER JOIN
	dbo.county_fips_codes cfc
		ON dbo.fn_GetFixedFipsCode(cfc.FIPS) = pd.fips
WHERE
	pd.county IS NOT NULL
	AND cfc.[Name] IS NULL
GROUP BY
	pd.fips,
	pd.[state]
ORDER BY
	pd.fips,
	pd.[state]
