--Drop table if it exists to prevent data duplication
DROP TABLE IF EXISTS OnlineRetail_2009_2010;

CREATE TABLE OnlineRetail_2009_2010(
	invoice VARCHAR(20),
	stock_code VARCHAR(20),
	description TEXT,
	quantity INT,
	invoice_date TIMESTAMP,
	unit_price NUMERIC(10, 2),
	customer_id VARCHAR(20),
	country VARCHAR(50)
);

\copy OnlineRetail_2009_2010 FROM 'C:\\Program Files\\PostgreSQL\\18\\data\\OnelineRetail\\OnlineRetail_2009_2010.csv' DELIMITER ',' CSV HEADER;
--Consider ',' as data separator
--Read file as CSV file and skip first line
--Note: Unlike normal SQL, meta‑commands are parsed by psql client itself; they don’t support line breaks the way SQL statements do.

SELECT COUNT(*) FROM OnlineRetail_2009_2010; --Check number of rows
SELECT * FROM OnlineRetail_2009_2010 LIMIT 5; --Show sample data

--QUERY 1: DETERMINE MONTHLY SALES AND RETURNS
SELECT
	DATE_TRUNC('month', invoice_date) AS month,
	SUM(CASE WHEN quantity > 0 THEN quantity*unit_price ELSE 0 END) AS positive_sales,
	SUM(CASE WHEN quantity <0 THEN quantity*unit_price ELSE 0 END) AS returns,
	SUM(quantity*unit_price) AS net_sales
FROM OnlineRetail_2009_2010
GROUP BY month;

--QUERY 2: IDENTIFY TOTAL SALES AND RETURNS
SELECT
    SUM(quantity*unit_price) AS grand_total,
    SUM(CASE WHEN quantity > 0 THEN quantity*unit_price ELSE 0 END) AS total_positive_sales,
    SUM(CASE WHEN quantity < 0 THEN quantity*unit_price ELSE 0 END) AS total_returns
FROM OnlineRetail_2009_2010;

--QUERY 3: IDENTIFY BIGGEST CUSTOMERS BY SALES (IGNORE CUSTOMERS WITH NO CUSTOMER ID)
SELECT customer_id, SUM(quantity*unit_price) AS sales FROM OnlineRetail_2009_2010
WHERE customer_id IS NOT NULL
GROUP BY customer_id
ORDER BY sales DESC
LIMIT 10;

--QUERY 4: IDENTIFY HIGHEST REVENUE PRODUCTS FOR THE WHOLE YEAR
SELECT stock_code, description, SUM(quantity) AS total_sold, SUM(quantity*unit_price) AS sales FROM OnlineRetail_2009_2010
GROUP BY stock_code, description
ORDER BY sales DESC
LIMIT 20;