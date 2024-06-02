CREATE DATABASE EmployeeManagementSystem;
USE EmployeeManagementSystem;

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DepartmentID INT,
    Position VARCHAR(50),
    Salary DECIMAL(10, 2)
);

-- Table to store department information
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50),
    EmployeeID INT,
    FOREIGN KEY(EmployeeID)
    REFERENCES Employees(EmployeeID)
);

-- Table to store employee addresses
CREATE TABLE EmployeeAddresses (
    AddressID INT PRIMARY KEY,
    EmployeeID INT,
    AddressLine1 VARCHAR(100),
    City VARCHAR(50),
    Province VARCHAR(50),
    FOREIGN KEY(EmployeeID)
    REFERENCES Employees(EmployeeID)
);

-- Table to store employee contact information
CREATE TABLE EmployeeContacts (
    ContactID INT PRIMARY KEY,
    EmployeeID INT,
    Email VARCHAR(50),
    Phone VARCHAR(15),
    FOREIGN KEY(EmployeeID)
    REFERENCES Employees(EmployeeID)
);

-- Table to store employee skills
CREATE TABLE EmployeeSkills (
    SkillID INT PRIMARY KEY,
    EmployeeID INT,
    SkillName VARCHAR(50),
    FOREIGN KEY(EmployeeID)
    REFERENCES Employees(EmployeeID)
);

-- Table to store employee projects
CREATE TABLE EmployeeProjects (
    ProjectID INT PRIMARY KEY,
    EmployeeID INT,
    ProjectName VARCHAR(50),
    StartDate DATE,
    EndDate DATE,
    FOREIGN KEY(EmployeeID)
    REFERENCES Employees(EmployeeID)
);

-- Table to store employee performance reviews
CREATE TABLE EmployeeReviews (
    ReviewID INT PRIMARY KEY,
    EmployeeID INT,
    ReviewDate DATE,
    Rating INT,
    Comments TEXT,
    FOREIGN KEY(EmployeeID)
    REFERENCES Employees(EmployeeID)
);

-- Table to store employee benefits
CREATE TABLE EmployeeBenefits (
    BenefitID INT PRIMARY KEY,
    EmployeeID INT,
    BenefitName VARCHAR(50),
    BenefitType VARCHAR(50),
    BenefitAmount DECIMAL(10, 2),
    FOREIGN KEY(EmployeeID)
    REFERENCES Employees(EmployeeID)
);

-- Table to store employee attendance
CREATE TABLE EmployeeAttendance (
    AttendanceID INT PRIMARY KEY,
    EmployeeID INT,
    AttendanceDate DATE,
    ClockInTime TIME,
    ClockOutTime TIME,
    FOREIGN KEY(EmployeeID)
    REFERENCES Employees(EmployeeID)
);

-- Table to store employee training
CREATE TABLE EmployeeTraining (
    TrainingID INT PRIMARY KEY,
    EmployeeID INT,
    TrainingName VARCHAR(50),
    TrainingDate DATE,
    Trainer VARCHAR(50),
    FOREIGN KEY(EmployeeID)
    REFERENCES Employees(EmployeeID)
    
);
INSERT INTO employees VALUES(
1,"Muhammad","Farzan",102,"Senior Developer",80000);
INSERT INTO departments VALUES(
102,"Software",1);
INSERT INTO employeeaddresses VALUES(
124,1,"ABC place","Karachi","Sindh");
INSERT INTO employeebenefits VALUES(
3,1,"Health Care","Cash",20000);
INSERT INTO employeecontacts VALUES(
1,1,"farzan@gmail.com","03xx-xxxxxxx");
INSERT INTO employeeprojects VALUES(
69,1,"EmployeeManagingProgram",'2024-01-07','2024-04-15');
INSERT INTO employeereviews VALUES(
112,1,'2023-11-23',9,"Polite and Respectful");
INSERT INTO employeeskills VALUES(
12,1,"C# Developer");
INSERT INTO employeetraining VALUES(
12,1,"C# Developer",'2019-11-22',"Amjad Khwaja");
INSERT INTO employeeattendance VALUES(
112,1,'2024-05-26','09:00:00','17:00:00');


INSERT INTO employees VALUES(
2,"Zaid","Khalid",102,"Junior Developer",40000),
(3,"Muhammad","Shaheer",3,"Finance Manager",120000);


SELECT * FROM employees HAVING Salary > 60000;

SELECT * FROM employees NATURAL JOIN employeeskills  WHERE EmployeeID=1;

SELECT * FROM employees WHERE SALARY BETWEEN 40000 AND 95000;

SELECT count(EmployeeID) AS TotalEmployees FROM employees;

SELECT * FROM employees HAVING EmployeeID=1;

SELECT * FROM employees NATURAL JOIN departments;
SELECT * FROM employeeskills NATURAL JOIN employeetraining;

SELECT * FROM employees NATURAL JOIN departments,employeeskills,employeecontacts;

UPDATE employees 
SET Salary = 85000
WHERE EmployeeID = 1;

SELECT * FROM employees WHERE Salary > 60000;
SELECT * FROM employees WHERE DepartmentID = 102;
SELECT * FROM employeeaddresses WHERE City = 'Karachi';
SELECT * FROM employeebenefits WHERE BenefitType = 'Cash';
SELECT * FROM employeecontacts WHERE Email LIKE '%@gmail.com';


SELECT * FROM employees NATURAL JOIN departments;
SELECT * FROM employees NATURAL JOIN employeeaddresses;
SELECT * FROM employees NATURAL JOIN employeebenefits;
SELECT * FROM employees NATURAL JOIN employeecontacts;
SELECT * FROM employees NATURAL JOIN employeeprojects;


SELECT COUNT(EmployeeID) AS TotalEmployees FROM employees;
SELECT SUM(Salary) AS TotalSalary FROM employees;
SELECT AVG(Salary) AS AverageSalary FROM employees;
SELECT MAX(Salary) AS HighestSalary FROM employees;
SELECT MIN(Salary) AS LowestSalary FROM employees;


UPDATE employees SET Salary = 90000 WHERE EmployeeID = 1;
UPDATE departments SET DepartmentName = 'IT' WHERE DepartmentID = 102;
UPDATE employeeaddresses SET City = 'Lahore' WHERE EmployeeID = 2;
UPDATE employeebenefits SET BenefitAmount = 25000 WHERE BenefitID = 3;
UPDATE employeecontacts SET Email = 'farzan@yahoo.com' WHERE EmployeeID = 1;


INSERT INTO employees VALUES (4, 'Ali', 'Hassan', 102, 'Intern', 20000);
INSERT INTO departments VALUES (103, 'HR', 3);
DELETE FROM employees WHERE EmployeeID = 4;
DELETE FROM departments WHERE DepartmentID = 103;
INSERT INTO employeereviews VALUES (113, 1, '2024-01-01', 8, 'Good Job');



