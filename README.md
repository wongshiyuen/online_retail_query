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
|:-------------------------|:---------------------------------------------------------------------------------------
|retailQuery.sql           |SQL file containing a total of 4 queries for year 2009/2010 of the Online Retail Dataset

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
1. **Download files**
   - Clone or download this repository to get the SQL and Python files.
   - Download the dataset from Kaggle and worksheet **'Year 2009-2010'** as **`OnlineRetail_2009_2010.csv`**.
2. **Organize files**
   - Place the dataset and code files inside the same project folder (repo root).
   - Example structure:
     ```
     retail_analysis/
     ├── README.md
     ├── retailQuery.sql
     └── OnlineRetail_2009_2010.csv
     ```
3. **Run the analysis:**
   ```bash
   psql -U postgres -d your_database -f retailQuery.sql
   ```

## Data Attribution
This project uses the Online Retail Data Set by Vijaykumar Ummadisetty. Dataset available on Kaggle (https://www.kaggle.com/datasets/vijayuv/onlineretail). Licensed under CC0: Public Domain.
