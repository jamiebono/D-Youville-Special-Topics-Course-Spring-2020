-- 1. HOW MANY UNIQUE DRGs ARE IN THIS DATA SET?
SELECT DISTINCT
    DRG_Definition
FROM
    cmarra.IPPS_Data
ORDER BY
    DRG_Definition

-- 2. HOW MANY STATES ARE INCLUDED IN THE DRGs? DO WE HAVE THE ENTIRE US?
SELECT DISTINCT
    Provider_State
FROM
    cmarra.IPPS_Data
ORDER BY
    Provider_State

-- 3. HOW MANY TOTAL DISCHARGES DO WE HAVE IN THE IPPS DATA SET?
SELECT
    SUM(Total_Discharges) as Total
FROM
    cmarra.IPPS_Data

-- 4. HOW MANY RECORDS DO WE HAVE IN THE DATA SET FROM BUFFALO, NY?
SELECT
    SUM(Total_Discharges) as Total
FROM   
    cmarra.IPPS_Data
WHERE
    Provider_City = 'Buffalo'
    AND Provider_State = 'NY'

-- 5. LET'S CREATE A VIEW OF JUST THE BUFFALO, NY PROVIDERS/HOSPITALS
CREATE VIEW cmarra.IPPS_Buffalo
AS
SELECT
    *
FROM   
    cmarra.IPPS_Data
WHERE
    Provider_City = 'Buffalo'
    AND Provider_State = 'NY'
GO

-- 6. USING THAT VIEW, WHAT ARE THE DIFFERENT HOSPITALS (PROVIDERS) IN THE DATA SET FROM BUFFALO, NY AND WHAT ARE THE DISCHARGES PER HOSPITAL? ORDER BY TOTAL DISCHARGES DESC
SELECT
    Provider_Name,
    COUNT(*) as Total
FROM   
    cmarra.IPPS_Buffalo
GROUP BY
    Provider_Name
ORDER BY
    COUNT(*) DESC

-- 7. WHAT ARE THE TOP 5 DRGs BY AVERAGE TOTAL PAYMENT FOR THE BUFFALO HOSPITAL?
SELECT TOP 5
    DRG_Definition,
    AVG(Average_Total_Payments * Total_Discharges) as Average_Total_Payments
FROM   
    cmarra.IPPS_Buffalo
GROUP BY
    DRG_Definition
ORDER BY
    AVG(Average_Total_Payments * Total_Discharges) DESC
