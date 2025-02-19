/*
Case Statements
*/

SELECT FirstName, LastName, Age,
CASE
	WHEN Age > 30 THEN 'Old'
	WHEN Age BETWEEN 27 AND 30 THEN 'Young'
	ELSE 'Baby'
END Maturity
FROM EmployeeDemographics
WHERE age IS NOT NULL
ORDER BY age;


SELECT FirstName, LastName, Age,
CASE
	WHEN Age = 38 THEN 'Darryl'
	WHEN Age > 30 THEN 'Old'
	ELSE 'Baby'
END Maturity
FROM EmployeeDemographics
WHERE age IS NOT NULL
ORDER BY age;


SELECT FirstName, LastName, JobTitle, Salary,
CASE 
	WHEN JobTitle = 'Salesman' THEN Salary * 1.10 
	WHEN JobTitle = 'Accountant' THEN Salary * 1.05
	WHEN JobTitle = 'HR' THEN Salary * 1.0001
	ELSE Salary * 1.03
END NewSalary
FROM EmployeeDemographics
JOIN EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID;