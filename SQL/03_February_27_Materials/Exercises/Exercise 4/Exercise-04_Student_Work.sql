-- 1. What is the Total Discharges for the city of Orlando, FL?
SELECT
    SUM(Total_Discharges) as Orlando_Discharges
FROM
    cmarra.IPPS_Data
WHERE
    Provider_City = 'Orlando'
    AND Provider_State = 'FL'

-- 2. How many, list alphabetically, DRG Definitions are there for the city of Orlando, FL?
SELECT
    DRG_Definition
FROM
    cmarra.IPPS_Data
WHERE
    Provider_City = 'Orlando'
    AND Provider_State = 'FL'
GROUP BY
    DRG_Definition
ORDER BY
    DRG_Definition

-- 3. How many, list numerically, DRG Codes (just the 3 digit number) are there for the city of Orlando, FL - and what are the total discharges per code?
SELECT
    LEFT(DRG_Definition,3) as DRG_Code,
    SUM(Total_Discharges) as DRG_Code_Discharges
FROM
    cmarra.IPPS_Data
WHERE
    Provider_City = 'Orlando'
    AND Provider_State = 'FL'
GROUP BY
    LEFT(DRG_Definition,3)
ORDER BY
    LEFT(DRG_Definition,3)

-- 4. For the DRG code 003, what is the total payment by zip code in Orlando, FL?
SELECT
    Provider_Zip_Code,
    SUM(Total_Discharges * Average_Total_Payments) as Total_Payments
FROM
    cmarra.IPPS_Data
WHERE
    Provider_City = 'Orlando'
    AND Provider_State = 'FL'
    AND LEFT(DRG_Definition,3) = '003'
GROUP BY
    Provider_Zip_Code
ORDER BY
    Provider_Zip_Code
    
-- 4. For the DRG code 003, what is the total payment by zip code in Orlando, FL?
SELECT
    Provider_Zip_Code,
    SUM(Total_Discharges * Average_Total_Payments) as Total_Payments
FROM
    cmarra.IPPS_Data
WHERE
    Provider_City = 'Orlando'
    AND Provider_State = 'FL'
    AND LEFT(DRG_Definition,3) = '003'
GROUP BY
    Provider_Zip_Code
ORDER BY
    Provider_Zip_Code

-- 5. What are the different hospitals/providers in the data set for Orlando, FL?
SELECT DISTINCT
    Provider_Name
FROM
    cmarra.IPPS_Data
WHERE
    Provider_City = 'Orlando'
    AND Provider_State = 'FL'
GROUP BY
    Provider_Name
ORDER BY
    Provider_Name

-- 6. Using a self join, are there any other cities that have these same providers/hospitals listed?
SELECT DISTINCT
    other.Provider_Name
FROM
    cmarra.IPPS_Data orl
    INNER JOIN
    cmarra.IPPS_Data other
        ON other.Provider_Name = orl.Provider_Name
WHERE
    orl.Provider_City = 'Orlando'
    AND orl.Provider_State = 'FL'
    AND other.Provider_City <> 'Orlando'
GROUP BY
    other.Provider_Name
ORDER BY
    other.Provider_Name

