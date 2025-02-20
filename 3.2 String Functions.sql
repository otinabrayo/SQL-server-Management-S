/*
String Functions - TRIM, LTRIM, RTRIM, Replace,	Substring, Upper, Lower
*/

DROP TABLE IF EXISTS EmployeeErrors
CREATE TABLE EmployeeErrors(
EmployeeID varchar(50),
FirstName varchar(50),
LastName varchar(50))

INSERT INTO EmployeeErrors
SELECT TOP 5 EmployeeID, FirstName, LastName
FROM EmployeeDemographics
ORDER BY EmployeeID;

INSERT INTO EmployeeErrors VALUES
('1020   ', 'Jimbo', 'Habert    '),
('      1020 ', 'KOloo', 'Habert - Ross  ')


SELECT *
FROM EmployeeErrors

-- Using TRIM, LTRIM, RTRIM - Gets rid of extra spaces

SELECT EmployeeID, TRIM(EmployeeID) IdTrim
FROM EmployeeErrors;

SELECT EmployeeID, LTRIM(EmployeeID) IdTrim
FROM EmployeeErrors;

SELECT EmployeeID, RTRIM(EmployeeID) IdTrim
FROM EmployeeErrors;


-- Using Replace

SELECT FirstName, REPLACE(FirstName, 'O', 'o')
FROM EmployeeErrors;

SELECT LastName, REPLACE(LastName, '- Ross', '')
FROM EmployeeErrors;


-- Using Substring

SELECT SUBSTRING(FirstName, 1, 3) NewName
FROM EmployeeErrors;

SELECT SUBSTRING( err.FirstName, 1, 3 ), SUBSTRING (dem.FirstName, 1, 3)
FROM EmployeeErrors err
JOIN EmployeeDemographics dem
	ON SUBSTRING( err.FirstName, 1, 3 ) = SUBSTRING (dem.FirstName, 1, 3);


-- Using Upper/Lower

SELECT FirstName, LOWER(FirstName)
FROM EmployeeErrors;

SELECT FirstName, UPPER(FirstName)
FROM EmployeeErrors;
