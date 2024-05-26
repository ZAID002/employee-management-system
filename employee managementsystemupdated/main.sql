CREATE DATABASE EmployeeManagementSystemupdated;
USE EmployeeManagementSystem;

CREATE TABLE Employees1 (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DepartmentID INT,
    Position VARCHAR(50),
    Salary DECIMAL(10, 2)
);

-- Table to store department information
CREATE TABLE Departments1 (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50),
    EmployeeID INT,
    FOREIGN KEY(EmployeeID)
    REFERENCES Employees(EmployeeID)
);

-- Table to store employee addresses
CREATE TABLE EmployeeAddresse1 (
    AddressID INT PRIMARY KEY,
    EmployeeID INT,
    AddressLine1 VARCHAR(100),
    City VARCHAR(50),
    Province VARCHAR(50),
    FOREIGN KEY(EmployeeID)
    REFERENCES Employees(EmployeeID)
);

-- Table to store employee contact information
CREATE TABLE EmployeeContacts1 (
    ContactID INT PRIMARY KEY,
    EmployeeID INT,
    Email VARCHAR(50),
    Phone VARCHAR(15),
    FOREIGN KEY(EmployeeID)
    REFERENCES Employees(EmployeeID)
);

-- Table to store employee skills
CREATE TABLE EmployeeSkills1 (
    SkillID INT PRIMARY KEY,
    EmployeeID INT,
    SkillName VARCHAR(50),
    FOREIGN KEY(EmployeeID)
    REFERENCES Employees(EmployeeID)
);

-- Table to store employee projects
CREATE TABLE EmployeeProjects1 (
    ProjectID INT PRIMARY KEY,
    EmployeeID INT,
    ProjectName VARCHAR(50),
    StartDate DATE,
    EndDate DATE,
    FOREIGN KEY(EmployeeID)
    REFERENCES Employees(EmployeeID)
);

-- Table to store employee performance reviews
CREATE TABLE EmployeeReviews1 (
    ReviewID INT PRIMARY KEY,
    EmployeeID INT,
    ReviewDate DATE,
    Rating INT,
    Comments TEXT,
    FOREIGN KEY(EmployeeID)
    REFERENCES Employees(EmployeeID)
);

-- Table to store employee benefits
CREATE TABLE EmployeeBenefits1 (
    BenefitID INT PRIMARY KEY,
    EmployeeID INT,
    BenefitName VARCHAR(50),
    BenefitType VARCHAR(50),
    BenefitAmount DECIMAL(10, 2),
    FOREIGN KEY(EmployeeID)
    REFERENCES Employees(EmployeeID)
);

-- Table to store employee attendance
CREATE TABLE EmployeeAttendance1 (
    AttendanceID INT PRIMARY KEY,
    EmployeeID INT,
    AttendanceDate DATE,
    ClockInTime TIME,
    ClockOutTime TIME,
    FOREIGN KEY(EmployeeID)
    REFERENCES Employees(EmployeeID)
);

-- Table to store employee training
CREATE TABLE EmployeeTraining1 (
    TrainingID INT PRIMARY KEY,
    EmployeeID INT,
    TrainingName VARCHAR(50),
    TrainingDate DATE,
    Trainer VARCHAR(50),
    FOREIGN KEY(EmployeeID)
    REFERENCES Employees(EmployeeID)
    
);
INSERT INTO employees1 VALUES(
1,"Muhammad","Farzan",102,"Senior Developer",80000);
INSERT INTO departments1 VALUES(
102,"Software",1);
INSERT INTO employeeaddresses1 VALUES(
124,1,"ABC place","Karachi","Sindh");
INSERT INTO employeebenefits1 VALUES(
3,1,"Health Care","Cash",20000);
INSERT INTO employeecontacts1 VALUES(
1,1,"farzan@gmail.com","03xx-xxxxxxx");
INSERT INTO employeeprojects1 VALUES(
69,1,"EmployeeManagingProgram",'2024-01-07','2024-04-15');
INSERT INTO employeereviews1 VALUES(
112,1,'2023-11-23',9,"Polite and Respectful");
INSERT INTO employeeskills1 VALUES(
12,1,"C# Developer");
INSERT INTO employeetraining1 VALUES(
12,1,"C# Developer",'2019-11-22',"Amjad Khwaja");
INSERT INTO employeeattendance1 VALUES(
112,1,'2024-05-26','09:00:00','17:00:00');


INSERT INTO employees1 VALUES(
2,"Zaid","Khalid",102,"Junior Developer",40000),
(3,"Muhammad","Shaheer",3,"Finance Manager",120000);


SELECT * FROM employees1 HAVING Salary > 60000;

SELECT * FROM employees1 NATURAL JOIN employeeskills  WHERE EmployeeID=1;

SELECT * FROM employees1 WHERE SALARY BETWEEN 40000 AND 95000;

SELECT count(EmployeeID1) AS TotalEmployees FROM employees1;

SELECT * FROM employees1 HAVING EmployeeID=1;

SELECT * FROM employees1 NATURAL JOIN departments;
SELECT * FROM employeeskills1 NATURAL JOIN employeetraining;

SELECT * FROM employees1 NATURAL JOIN departments,employeeskills,employeecontacts;

UPDATE employees1 
SET Salary = 85000
WHERE EmployeeID = 1;