-- TABLE JOIN
SELECT
	* 
FROM 
	dbo.zip_code_database z
where 
	z.zip = '14203'

SELECT
	*
FROM
	dbo.county_fips_codes cfc
WHERE
	cfc.[Name] = 'Erie'

-- INNER JOIN
SELECT
	*
FROM
	dbo.zip_code_database z
	INNER JOIN
	dbo.county_fips_codes cfc
		ON cfc.[Name] = z.county
		--AND cfc.[State] = z.[state]
WHERE
	z.zip = '14203'

-- MULTIPLE TABLE JOINS
SELECT
	*
FROM
	dbo.zip_code_database z
	INNER JOIN
	dbo.county_fips_codes cfc
		ON cfc.[Name] = z.county
		AND cfc.[State] = z.[state]
	INNER JOIN
	dbo.acs_profile_data pd
		ON pd.fips = cfc.FIPS
WHERE
	z.zip = '14203'
	
-- MULTIPLE TABLE JOINS/ CLEANED VIEW
SELECT
	pd.*
FROM
	dbo.zip_code_database z
	INNER JOIN
	dbo.county_fips_codes cfc
		ON cfc.[Name] = z.county
		AND cfc.[State] = z.[state]
	INNER JOIN
	dbo.acs_profile_data pd
		ON pd.fips = cfc.FIPS
WHERE
	z.zip = '14203'
ORDER BY
	pd.measure_label,
	pd.[year]


-- OUTER JOINS (FIND MISSING DATA)
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



