
 --Create a table that contains Employee Demographics

CREATE TABLE EmployeeDemographics
(EmployeeID int,
FirstName varchar(50),
LastName varchar(50),
Age int,
Gender varchar(50)
)

 --Create another table that contains the salary info of employees

CREATE TABLE EmployeeSalary
( EmployeeID int,
JobTitle varchar(50),
Salary int
)

-- Now insert employee demographics into EmployeeDemographics table

INSERT INTO EmployeeDemographics VALUES
(1001, 'Jim', 'Halpert', 30, 'Male')
(1002, 'Pam', 'Beasley', 30, 'Female'),
(1003, 'Dwight', 'Schrute', 29, 'Male'),
(1004, 'Angela', 'Martin', 31, 'Female'),
(1005, 'Toby', 'Flenderson', 32, 'Male'),
(1006, 'Michael', 'Scott', 35, 'Male'),
(1007, 'Meredith', 'Palmer', 32, 'Female'),
(1008, 'Stanley', 'Hudson', 38, 'Male'),
(1009, 'Kevin', 'Malone', 31, 'Male')

-- Insert the salary information of employees to EmployeeSalary table

INSERT INTO EmployeeSalary VALUES
(1001, 'Salesman', 45000)
(1002, 'Receptionist', 36000),
(1003, 'Salesman', 63000),
(1004, 'Accountant', 47000),
(1005, 'HR', 50000),
(1006, 'Regional Manager', 65000),
(1007, 'Supplier Relations', 41000),
(1008, 'Salesman', 48000),
(1009, 'Accountant', 42000)

-- Select every information from EmployeeDemographics and show the table

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics

-- Select only the age of the employees and ID from Employee Demographics table and show it as a table

SELECT EmployeeID, Age
FROM SQLTutorial.dbo.EmployeeDemographics

-- Select only the gender of the employees and ID from Employee Demographics table and show it as a table

SELECT EmployeeID, Gender
FROM SQLTutorial.dbo.EmployeeDemographics

-- Show only first 5 results of Employee Demographics

Select TOP 5 *
FROM SQLTutorial.dbo.EmployeeDemographics

-- Now Show the distinct Age and Last Name from Employee Demographics in two different columns

SELECT Distinct(Age)
FROM SQLTutorial.dbo.EmployeeDemographics

SELECT Distinct(LastName)
FROM SQLTutorial.dbo.EmployeeDemographics

-- Now Count the Employee ID from Employee Demographics and show it in a column

SELECT COUNT(EmployeeID) AS EmployeeIDCount
FROM SQLTutorial.dbo.EmployeeDemographics

-- Now look into the other table called EmployeeSalary

SELECT *
FROM SQLTutorial.dbo.EmployeeSalary

-- Find out the highest salary from EmployeeSalary

SELECT MAX(Salary) as MaximumSalary
FROM SQLTutorial.dbo.EmployeeSalary

-- Find out the lowest salary from EmployeeSalary

SELECT MIN(Salary) as LowestSalary
FROM SQLTutorial.dbo.EmployeeSalary

-- Find out the average salary of the employees using EmployeeSalary

SELECT AVG(Salary) as AverageSalary
FROM SQLTutorial.dbo.EmployeeSalary

-- How will you still access the table called EmployeeSalary when you are at the Master Database?

SELECT *
FROM SQLTutorial.dbo.EmployeeSalary

-- Show a table using EmployeeDemographics where employee's age is above 30

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
WHERE Age > 30

-- Show a table using EmployeeDemographics where employee's gender is Male

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
WHERE Gender = 'Male'

-- Show a table using EmployeeDemographics where employee's age is equal or above 32 and Gender is Female

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
WHERE Age >= 32 AND Gender = 'Female'

-- Show a table using EmployeeDemographics where employee's age is equal or less than 31 and Gender is Male

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
WHERE Age <= 31 AND Gender = 'Male'

-- Show a table using EmployeeDemographics where either employee's age is equal or less than 31 or Gender is Female

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
WHERE Age <= 31 OR Gender = 'Female'

-- Show a table using EmployeeDemographics where Employee's First name starts with D

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
WHERE FirstName LIKE 'D%'

-- Show a table using EmployeeDemographics where Employee's Last name ends with N

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
WHERE LastName LIKE '%n'

-- Show a table using EmployeeDemographics where Employee's Last name contains X or First name contains B

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
WHERE LastName LIKE '%x%' OR FirstName Like '%b%'

-- Show a table using EmployeeDemographics where Employee's Last name starts with S and contains C and T as well

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
WHERE LastName LIKE 'S%c%t%'

-- Show a table from EmployeeDemographics where Age is empty

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
WHERE Age is NULL --Since EmployeeDemographics table doesn't have any empty fields we get an empty result when we looked for Null value

-- Show a table from EmployeeDemographics where Employee ID is not empty

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
WHERE EmployeeID is NOT NULL

-- Show every employee whose age is either 35 or 38 from Employee Demographics

SELECT * 
FROM SQLTutorial.dbo.EmployeeDemographics
WHERE Age in (35, 38)

-- Check how many male and female employees are in the Employee Demographics and grouped them by Gender

SELECT Gender, COUNT(Gender) AS GenderCount
FROM SQLTutorial.dbo.EmployeeDemographics
GROUP BY Gender

-- Check how many male and female employees are in the Employee Demographics and grouped them by Gender, Also count the AGE and group then by AGE

SELECT Gender, COUNT(Gender) AS GenderCount, Age, COUNT(Age) AS AgeCount
FROM SQLTutorial.dbo.EmployeeDemographics
GROUP BY Gender, Age

-- Show the most youngest employee at the top and the oldest employee at the bottom from Employee Demographics table

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
ORDER BY Age

-- Show the most oldest employee at the top and the youngest employee at the bottom from Employee Demographics table

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
ORDER BY Age desc

-- List down all the male employees and from old to young order from Employee Demographics table

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
WHERE Gender = 'Male'
ORDER BY Age

-- List down all the employees where the age is sorted in Descending order and the gender is sorted in Ascending order from Employee Demographics table

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
ORDER BY Age desc, Gender asc



