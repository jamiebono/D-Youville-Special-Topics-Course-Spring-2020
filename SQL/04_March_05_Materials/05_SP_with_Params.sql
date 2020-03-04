-- STORED PROCEDURES - BASIC SP

-- DROP PROCEDURE dbo.sp_FindZipCodeData
CREATE PROCEDURE dbo.sp_FindZipCodeData

	@nvrZipCode NVARCHAR(10)

AS
BEGIN

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
		z.zip = @nvrZipCode
	ORDER BY
		pd.measure_label,
		pd.[year]

END
GO