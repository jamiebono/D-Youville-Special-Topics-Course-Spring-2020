-- INDEXING
-- DROP INDEX idx_fips_code ON dbo.county_fips_codes
CREATE UNIQUE CLUSTERED INDEX idx_fips_code ON dbo.county_fips_codes(FIPS)
GO

-- SELECT * FROM dbo.county_fips_codes where FIPS = '60020'

-- DROP INDEX idx_acs_profile_data_fips_cover ON dbo.acs_profile_data
CREATE NONCLUSTERED INDEX idx_acs_profile_data_fips_cover ON dbo.acs_profile_data (fips)
GO