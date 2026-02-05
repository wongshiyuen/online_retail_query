# Online Retail SQL Analysis
## Project Overview
This project applies SQL to the **Online Retail Dataset (2009/2010)** to showcase practical data analysis skills.  
The queries demonstrate how to:
- Aggregate monthly and total sales, including returns
- Identify top customers by revenue (excluding null IDs)
- Highlight highest‑revenue products

By focusing on sales, returns, and customer/product rankings, this project illustrates SQL techniques that are directly relevant to **business intelligence and analytics roles** — turning raw retail data into actionable insights.

## Repository Contents
This repository contains the following files:
|File                      |Description      
|:-------------------------|:-----------------------------------------------------------------------------------------------
|retailQuery.sql           |SQL file containing a total of 4 queries for year 2009/2010 of the Online Retail Dataset
|OnlineRetail_2009_2010.csv|CSV file extracted from original Online Retail Dataset; contains retail data for year 2009/2010

The queries in retailQuery.sql are as follows:
|Query No.|Query Objective                     
|:--------|:---------------------------------------------------------------------------
|1        |Determine monthly sales and returns for year 2009/2010
|2        |Determine total sales and returns for year 2009/2010
|3        |Identify biggest customers by sales for year 2009/2010 (excluding NULL IDs)
|4        |Identify highest-revenue products for year 2009/2010

## Requirements
1. PostgreSQL 14+
2. Command prompt (or any other 'psql' command-line tool)
3. Local copy of `OnlineRetail_2009_2010.csv`

## Getting Started
The following are the procedures for downloading the required dataset and running the SQL file in this repository:
1. Download dataset from Kaggle.
2. Save worksheet 'Year 2009-2010' as `OnlineRetail_2009_2010.csv`.
3. Adjust file path in SQL script to match your environment.
4. Run queries:
   ```bash
   psql -U postgres -d retail_db -f retailQuery.sql
   ```

## Data Attribution
This project uses the Online Retail Data Set by Vijaykumar Ummadisetty. Dataset available on Kaggle (https://www.kaggle.com/datasets/vijayuv/onlineretail). Licensed under CC0: Public Domain.
