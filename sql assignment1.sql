-- 1. salary > 50000
show databases;
use companydb;
SELECT 
  *FROM Employees
  WHERE Salary > 50000
  AND (Department = 'IT' OR Department = 'Marketing'); 

-- 2. Calculate total salary with 10% bonus
SELECT EmployeeID, FirstName, LastName, Department, Salary,
       Salary + (Salary * 0.10) AS Total_Salary
FROM Employees;

-- 3. Employees hired between 2018-01-01 and 2020-12-31
SELECT *
FROM Employees
WHERE HireDate BETWEEN '2018-01-01' AND '2020-12-31';

-- 4. Names starting with 'A' or 'B', ordered alphabetically
SELECT *
FROM Employees
WHERE FirstName LIKE 'A%' OR FirstName LIKE 'B%'
ORDER BY FirstName ASC;

-- 5. Employees in IT, Finance, or HR (show department & job title)

SELECT FirstName, LastName, Department, Position
FROM Employees
WHERE Department IN ('IT', 'Finance', 'HR');

