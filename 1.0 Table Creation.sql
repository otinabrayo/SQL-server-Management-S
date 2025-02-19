CREATE TABLE EmployeeDemographics
(EmployeeID int,
FirstName varchar(50),
LastName varchar(50),
Age int,
Gender varchar(50)
);

CREATE TABLE EmployeeSalary
(EmployeeID int,
JobTitle varchar(50),
Salary int
);

INSERT INTO EmployeeDemographics VALUES
(1002, 'Tobby', 'Flanderson', 32, 'Male'),
(1003, 'Pam', 'Beasley', 30, 'Female'),
(1004, 'Jim', 'Halpert', 29, 'Male'),
(1005, 'Dwight', 'Schrute', 32, 'Male'),
(1006, 'Stanley', 'Hudson', 39, 'Male'),
(1007, 'Meredith', 'Palmer', 35, 'Female'),
(1008, 'Angela', 'Martin', 31, 'Female'),
(1009, 'Kevin', 'Malone', 33, 'Male')


INSERT INTO EmployeeSalary VALUES
(1001, 'Regional Manager', 65000),
(1002, 'HR', 50000),
(1003, 'Receptionist', 36000),
(1004, 'Salesman', 63000),
(1005, 'Salesman', 48000),
(1006, 'Supplier Relations', 41000),
(1007, 'Accountant', 47000),
(1008, 'Accountant', 42000),
(1009, 'Supply Chain', 45000)