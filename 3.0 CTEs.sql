/*
CTEs
*/

WITH CTE_Employee as 
(SELECT FirstName, LastName, Gender, Salary,
COUNT(Gender) OVER(PARTITION BY Gender) TotalGender,
AVG(Salary) OVER(PARTITION BY Gender) AvgSalary
FROM EmployeeDemographics dem
JOIN EmployeeSalary sal
	ON dem.EmployeeID = sal.EmployeeID
WHERE Salary > 45000
)
SELECT FirstName, AvgSalary
FROM CTE_Employee
;