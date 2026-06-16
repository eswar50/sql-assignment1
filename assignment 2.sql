--  Write a SQL query to select products with an average sale price greater than $100, using the HAVING clause to filter the results.

SELECT ProductID,
       ProductName,
       AVG(SalePrice) AS AvgPrice
FROM Sales
GROUP BY ProductID, ProductName
HAVING AVG(SalePrice) > 100;

-- Develop a SQL query that groups sales data by region and uses the HAVING clause to identify regions with total sales exceeding $10,000.

SELECT Region,
       SUM(SalePrice * Quantity) AS TotalSales
FROM Sales
GROUP BY Region
HAVING SUM(SalePrice * Quantity) > 10000;


--  Create a SQL query to find products with a sales count greater than 50, applying the HAVING clause to filter the grouped data.

SELECT ProductID,
       ProductName,
       COUNT(*) AS SalesCount
FROM Sales
GROUP BY ProductID, ProductName
HAVING COUNT(*) > 50;


--  Write a SQL query that calculates the total sales for each product and uses the HAVING clause to select products with total sales between 5,000 and 5, 000  and  20,000.

SELECT ProductID,
       ProductName,
       SUM(SalePrice * Quantity) AS TotalSales
FROM Sales
GROUP BY ProductID, ProductName
HAVING SUM(SalePrice * Quantity)
       BETWEEN 5000 AND 20000;
       
-- Optimize each query for performance, considering indexing, subqueries, and other relevant SQL techniques.

SELECT *
FROM (
    SELECT ProductID,
           ProductName,
           SUM(SalePrice * Quantity) AS TotalSales
    FROM Sales
    GROUP BY ProductID, ProductName
) AS ProductTotals
WHERE TotalSales BETWEEN 5000 AND 20000;
