-- TABLE FUNCTION

-- DROP FUNCTION dbo.fn_GetProfileDataByFipsCode
CREATE FUNCTION dbo.fn_GetProfileDataByFipsCode(@nvrCode NVARCHAR(10))
RETURNS TABLE
AS
RETURN 

	SELECT
		*
	FROM
		dbo.acs_profile_data
	WHERE
		fips = dbo.fn_GetFixedFipsCode(@nvrCode)


GO

/**
SELECT 
	* 
FROM 
	dbo.fn_GetProfileDataByFipsCode('1005') 
ORDER BY 
	measure_label,
	[year]
*/