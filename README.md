# online_retail_query
SQL queries for retail data from year 2009/2010 of the Online Retail Dataset.

## Repository Contents
This repository contains the following files:
|File                      |Description      
|:-------------------------|:-----------------------------------------------------------------------------------------------
|retailQuery.sql           |SQL file containing a total of 4 queries for year 2009/2010 of the Online Retail Dataset
|OnlineRetail_2009_2010.csv|CSV file extracted from original Online Retail Dataset; contains retail data for year 2009//2010

The queries in retailQuery.sql are as follows:
|Query No.|Query Objective                     
|:--------|:--------------------------------------------------------------------------------------------
|1        |Determine monthly sales and returns for year 2009/2010
|2        |Determine total sales and returns for year 2009/2010
|3        |Identify biggest customers by sales for year 2009/2010 (ignore customers with no customer ID)
|4        |Identify highest-revenue products for year 2009/2010

## Requirements

## Getting Started
The following are the procedures for downloading the required dataset and running the SQL file in this repository:
1. Download the Online Retail Data Set from Kaggle (or any other available repositories). The dataset is in the form of an Excel file with 2 worksheets ('Year 2009-2010' and 'Year 2010-2011').
2. Save the 'Year 2009-2010' as 'OnlineRetail_2009_2010.csv'. For the SQL file in this repository, the file location was set to 'C:\Program Files\PostgreSQL\18\data\OnelineRetail\OnlineRetail_2009_2010.csv'.
3. Login into PSQL on cmd.
4. Run SQL file by typing: \i {insert filepath}.

## Data Attribution
This project uses the Online Retail Data Set by Vijaykumar Ummadisetty. Dataset available on Kaggle (https://www.kaggle.com/datasets/vijayuv/onlineretail). Licensed under CC0: Public Domain.
