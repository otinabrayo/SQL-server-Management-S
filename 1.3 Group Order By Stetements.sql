/*
Group By - It shows unique value and rolls them up in one colum for future use
Order By - 
*/

SELECT Gender, Age, COUNT(Gender) Countgender
FROM EmployeeDemographics
GROUP BY Gender, Age;

SELECT Gender, Age, COUNT(Gender) x
FROM EmployeeDemographics
GROUP BY Gender, Age
ORDER BY x DESC;

SELECT *
FROM EmployeeDemographics
ORDER BY Age DESC;