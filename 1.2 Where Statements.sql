/*
Where Statements
=, <>/!=, <, >, And, Or, Like(%-wildcard, _-), Null, Not Null, In

*/

SELECT *
FROM EmployeeDemographics
WHERE FirstName != 'Jim';

SELECT *
FROM EmployeeDemographics
WHERE Age <= 33 AND Gender = 'Male';

SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE '%S___';

SELECT *
FROM EmployeeDemographics
WHERE FirstName IS NOT NULL;

SELECT *
FROM EmployeeDemographics
WHERE FirstName IN ('Jim', 'Michael');