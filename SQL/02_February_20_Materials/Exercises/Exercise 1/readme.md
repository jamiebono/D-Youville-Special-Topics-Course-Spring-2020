#SQL Module - Session 1 - Exercises

## Exercise 1
1. Create your own IPPS_Data table. Here are the columns:

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

2. Use a SELECT statement from dbo.IPPS_Data_2017 to insert data into your table
3. Use the aggregate COUNT to check the row count of your new table
4. Use the SELECT TOP function to view a sample of the data
