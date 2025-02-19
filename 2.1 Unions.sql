/*
Union 
Union All - shows the data as it is , it adds duplicates to the result
*/


SELECT EmployeeID, FirstName, Age
FROM EmployeeDemographics
UNION
SELECT EmployeeID, JobTitle, Salary
FROM EmployeeSalary
ORDER BY EmployeeID;

SELECT *
FROM EmployeeDemographics
FULL OUTER JOIN WarehouseEmployeeDemographics
	ON EmployeeDemographics.EmployeeID = WarehouseEmployeeDemographics.EmployeeID;
