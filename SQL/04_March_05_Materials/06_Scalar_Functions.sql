-- SCALAR FUNCTION

-- DROP FUNCTION dbo.fn_GetFixedFipsCode
CREATE FUNCTION dbo.fn_GetFixedFipsCode(@nvrCode NVARCHAR(10))
RETURNS NVARCHAR(10)
AS
BEGIN

	DECLARE @nvrNewCode NVARCHAR(10) = @nvrCode

	IF (LEN(@nvrCode) = 4)
		BEGIN
			SET @nvrNewCode = '0' + @nvrCode
		END
	
	RETURN @nvrNewCode

END
GO