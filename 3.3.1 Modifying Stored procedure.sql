USE [SQL pop]
GO
/****** Object:  StoredProcedure [dbo].[TempEmployee]    Script Date: 20/02/2025 15:42:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[TempEmployee] 
@JobTitle nvarchar(100)
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
WHERE JobTitle = @JobTitle
GROUP BY JobTitle;

SELECT *
FROM #temp_employ