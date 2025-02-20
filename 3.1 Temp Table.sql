/*
Temp Tables
*/

CREATE TABLE #temp_Employee (
EmployeeID int, 
JobTitle varchar(40));

INSERT INTO #temp_Employee VALUES
(10030, 'HR');

INSERT INTO #temp_Employee
SELECT EmployeeID, JobTitle
FROM EmployeeSalary;

SELECT *
FROM #temp_Employee;


DROP TABLE IF EXISTS #Temp_Employee2
CREATE TABLE #Temp_Employee2 (
JobTitle varchar(50),
AVGAge int, 
AvgSalary int );

INSERT INTO #Temp_Employee2
SELECT JobTitle, AVG(Age), AVG(Salary)
FROM EmployeeDemographics dem
JOIN EmployeeSalary sal
	ON dem.EmployeeID = sal.EmployeeID
WHERE JobTitle IS NOT NULL
GROUP BY JobTitle;

SELECT *
FROM #Temp_Employee2;
