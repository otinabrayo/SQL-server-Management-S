/*
Stored Procedures
*/

CREATE PROCEDURE TEST
AS 
SELECT *
FROM EmployeeDemographics;

EXEC TEST;


CREATE PROCEDURE TempEmployee
AS
CREATE TABLE #temp_employ(
JobTitle varchar(40),
AvgAge int,
AvgSalary int)

INSERT INTO #temp_employ
SELECT JobTitle, AVG(Age), AVG(Salary)
FROM EmployeeDemographics dem
JOIN EmployeeSalary sal
	ON dem.EmployeeID = sal.EmployeeID
	GROUP BY JobTitle;

SELECT *
FROM #temp_employ

EXEC TempEmployee @JobTitle = 'HR';
