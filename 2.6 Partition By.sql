/*
Partition By
*/

SELECT FirstName, LastName, Gender, Salary,
COUNT(Gender) OVER(PARTITION BY Gender) TotalGender
FROM EmployeeDemographics dem
JOIN EmployeeSalary sal
	ON dem.EmployeeID = sal.EmployeeID
WHERE Gender IS NOT NULL;


SELECT Gender, COUNT(Gender) Total
FROM EmployeeDemographics dem
JOIN EmployeeSalary sal
	ON dem.EmployeeID = sal.EmployeeID
WHERE Gender IS NOT NULL
GROUP BY Gender;