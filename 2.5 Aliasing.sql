/*
Aliasing
*/

SELECT FirstName + ' ' + LastName Fn
FROM EmployeeDemographics

SELECT AVG(Age) avgage
FROM EmployeeDemographics

SELECT Demo.EmployeeID, sal.Salary
FROM EmployeeDemographics Demo
JOIN EmployeeSalary Sal
	ON Demo.EmployeeID = Sal.EmployeeID
LEFT JOIN WarehouseEmployeeDemographics Ware
	ON Demo.EmployeeID = Ware.EmployeeID;