

/*
Select Statemnt
* - selects everything
Top - Selects few rows for visual
Distinct - Selects unique value in a specific column
Count - All the non null value in a column
As - Gives a name to a column
Max - 
Min
Avg
*/

SELECT	COUNT (LastName) Total
FROM EmployeeDemographics;

SELECT MAX(Salary) max, AVG(Salary) avg, MIN(Salary) min
FROM EmployeeSalary;

SELECT *
FROM [SQL pop].dbo.EmployeeSalary;