-- 1. What are the top 10 states with the highest total payment across all DRGs? 
SELECT TOP 10
    Provider_State,
    SUM(Average_Total_Payments * Total_Discharges) as Total_Payments
FROM   
    cmarra.IPPS_Data
GROUP BY
    Provider_State
ORDER BY   
    SUM(Average_Total_Payments * Total_Discharges) DESC

-- 2. What are the top 10 zip codes with the highest total payment across all DRGs? Do they match up with the top 10 states?
SELECT TOP 10
    Provider_State,
    Provider_Zip_Code,
    SUM(Average_Total_Payments * Total_Discharges) as Total_Payments
FROM   
    cmarra.IPPS_Data
GROUP BY
    Provider_State,
    Provider_Zip_Code
ORDER BY   
    SUM(Average_Total_Payments * Total_Discharges) DESC

-- 3. What state has the highest differential between Average Covered Charges and Average Total Payments? 
SELECT TOP 1
    Provider_State,
    SUM(Average_Covered_Charges * Total_Discharges) as Total_Covered_Charges,
    SUM(Average_Total_Payments * Total_Discharges) as Total_Payments,
    (SUM(Average_Covered_Charges * Total_Discharges) - SUM(Average_Total_Payments * Total_Discharges)) as Diff_In_Total_Payments
FROM   
    cmarra.IPPS_Data
GROUP BY
    Provider_State
ORDER BY   
    (SUM(Average_Covered_Charges * Total_Discharges) - SUM(Average_Total_Payments * Total_Discharges)) DESC

-- 4. What is the lowest Average Total Payment for a DRG across any state/zip?
SELECT TOP 1
    *
FROM    
    cmarra.IPPS_Data
ORDER BY   
    Average_Total_Payments ASC