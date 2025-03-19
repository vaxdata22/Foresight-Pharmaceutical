+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
++++++++++++ ANALYSIS.SQL FILE ++++++++++++++++++++++++++++++
++++++++++++ FORESIGHT PHARM.  ++++++++++++++++++++++++++++++
++++++++++++ NOV. 2023         ++++++++++++++++++++++++++++++
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

The following are the T-SQL queries that were used to carry out data analysis
on the Foresight Pharmaceutical Company dataset:

--  total ammount of sales per distributor 
SELECT distributor, ROUND(SUM(sales), 0) AS total_amount_sales FROM PharmData
	 GROUP BY distributor 
	ORDER BY total_amount_sales DESC;
	
--  total no of sales per distributor
SELECT distributor, COUNT(*) AS total_no_sales FROM PharmData
	 GROUP BY distributor 
	ORDER BY total_no_sales DESC;

-- total amount of sales per sales rep
SELECT [Name of Sales Rep], ROUND(SUM(sales), 0) AS total_amount_sales FROM PharmData
	 GROUP BY [Name of Sales Rep]
	ORDER BY total_amount_sales DESC;

 -- total amount of sales per manager
SELECT Manager, ROUND(SUM(sales), 0) AS total_amount_sales FROM PharmData
	 GROUP BY  Manager
	ORDER BY total_amount_sales DESC;

-- total amount of sales per sales team
SELECT [Sales Team], ROUND(SUM(sales), 0) AS total_amount_sales FROM PharmData
	 GROUP BY [Sales Team]
	ORDER BY total_amount_sales DESC;

-- total amount of sales per channel
SELECT Channel, ROUND(SUM(sales), 0) AS total_amount_sales FROM PharmData
	 GROUP BY Channel 
	ORDER BY total_amount_sales DESC;

-- total amount of sales per sub-channel
SELECT [Sub-channel], ROUND(SUM(sales), 0) AS total_amount_sales FROM PharmData
	 GROUP BY [Sub-channel] 
	ORDER BY total_amount_sales DESC;

-- total no of sales per product class
SELECT [product class], COUNT(*) AS total_no_sales FROM PharmData 
	 GROUP BY [Product Class]
	ORDER BY total_no_sales DESC;

-- total amount of sales per year
SELECT [year], ROUND(SUM(sales), 0) AS total_amount_sales FROM PharmData
	 GROUP BY [Year]
	ORDER BY total_amount_sales DESC;

-- total amount of sales per product class
SELECT [product class], ROUND(SUM(sales), 0) AS total_amount_sales FROM PharmData
	 GROUP BY [product class]
	ORDER BY total_amount_sales DESC;

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
