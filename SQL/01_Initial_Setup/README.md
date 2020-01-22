# 01 - Initial Setup
Outlines the steps for the initial setup of MSSQL and connecting to the database

## Install SQL Server Management Studio
Windows - download from [here](https://docs.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver15)

macOS and Linux - download from [here](https://github.com/Microsoft/azuredatastudio)

## Connection Information
Server: dyc.database.windows.net,1433

Database Name: dyc

## Setup Login
Run Script 01_Setup_Login.sql

## Setup User and Database Permissions
Run 02_Setup_User_And_Schema.sql

## Tips
* If you get the error:
** The server principal <username> is not able to access the database "master" under the current security context.
** Go to Options > Connection Properties > Connect to Database = "dyc"
