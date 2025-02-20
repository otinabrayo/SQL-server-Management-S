/*
SubQueries
*/

SELECT *
FROM EmployeeSalary;

-- Subquery in Select

SELECT EmployeeID, Salary, (SELECT AVG(Salary) FROM EmployeeSalary) AllAvgSal
FROM EmployeeSalary;

-- With PATRITION BY

SELECT EmployeeID, Salary, AVG(Salary) OVER() AllAvgSal
FROM EmployeeSalary;

-- Subquery in FROM

SELECT a.EmployeeID, AllAvgSal
FROM (SELECT EmployeeID, Salary, AVG(Salary) OVER() AllAvgSal
	  FROM EmployeeSalary) a;

-- Subquery in FROM

SELECT EmployeeID, JobTitle, Salary
FROM EmployeeSalary
WHERE EmployeeID IN (
		SELECT EmployeeID
		FROM EmployeeDemographics
		WHERE Age > 30);





