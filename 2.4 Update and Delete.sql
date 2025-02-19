/*
Updating/Deleting Data
*/

SELECT *
FROM EmployeeDemographics

UPDATE EmployeeDemographics 
SET Age = 25, Gender = 'Female'
WHERE FirstName = 'Holy' AND  LastName = 'Flux';

DELETE FROM EmployeeDemographics
WHERE Age IS NULL;