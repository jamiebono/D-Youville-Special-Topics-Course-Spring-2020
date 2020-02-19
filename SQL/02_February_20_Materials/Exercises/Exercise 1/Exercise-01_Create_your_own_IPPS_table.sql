-- 1. CREATE YOUR OWN TABLE
CREATE TABLE cmarra.IPPS_Data(
        DRG_Definition	nvarchar(100),
        Provider_Id	bigint,
        Provider_Name	nvarchar(100),
        Provider_Street_Address	nvarchar(100),
        Provider_City	nvarchar(100),
        Provider_State	nvarchar(100),
        Provider_Zip_Code	nvarchar(100),
        Hospital_Referral_Region_HRR_Description nvarchar(100),
        Total_Discharges	bigint,
        Average_Covered_Charges	decimal(12,2),
        Average_Total_Payments	decimal(12,2),
        Average_Medicare_Payments	decimal(12,2)
)
GO

-- 2. USE A SELECT STATEMENT FROM ANOTHER TABLE TO INSERT DATA INTO YOUR TABLE
INSERT INTO cmarra.IPPS_Data(
    DRG_Definition,
    Provider_Id,
    Provider_Name,
    Provider_Street_Address,
    Provider_City,
    Provider_State,
    Provider_Zip_Code,
    Hospital_Referral_Region_HRR_Description,
    Total_Discharges,
    Average_Covered_Charges,
    Average_Total_Payments,
    Average_Medicare_Payments
)
SELECT 
    DRG_Definition,
    Provider_Id,
    Provider_Name,
    Provider_Street_Address,
    Provider_City,
    Provider_State,
    Provider_Zip_Code,
    Hospital_Referral_Region_HRR_Description,
    Total_Discharges,
    Average_Covered_Charges,
    Average_Total_Payments,
    Average_Medicare_Payments
FROM   
    dbo.IPPS_Data_2017
GO

-- 3. USE THE AGGREGATE COUNT TO CHECK THE ROW COUNT OF YOUR NEW TABLE
SELECT
    COUNT(*) 
FROM 
    cmarra.IPPS_Data -- should equal 196325
GO

-- 4. USE THE SELECT TOP FUNCTION TO VIEW A SAMPLE OF THE DATA
SELECT TOP 10
    *
FROM
    cmarra.IPPS_Data
GO