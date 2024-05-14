create database employeemanagementsystem;
use employeemanagementsystem;
-- TABLE 1 EMPLOYEES
create table Employees(
EMPLOYEE_ID INT PRIMARY KEY,
FIRST_NAME VARCHAR(20),
LAST_NAME VARCHAR (20),
DEPARTMENT_ID INT,
POSITION VARCHAR(50),
SALARY DECIMAL (10,2)
);
-- TABLE2 TO STORE DEPARTMENT INFORMATION
CREATE TABLE DEPARTMENTS(
DEPARTMENT_ID INT PRIMARY KEY,
DEPARTMENT_NAME VARCHAR(50)
);

-- TABLE 3 TO STORE EMPLOYEES ADRESSES
CREATE TABLE EMPLOYEES_ADRESSES(
ADRESS_ID INT,
ADRESSLINE1 VARCHAR(100),
CITY VARCHAR(50),
PROVINCE VARCHAR(50)
);
-- Table4 to store employee contact information
CREATE TABLE EmployeeContacts(
    ContactID INT PRIMARY KEY,
    EmployeeID INT,
    Email VARCHAR(50),
    Phone VARCHAR(15)
);

-- Table5 to store employee skills
CREATE TABLE EmployeeSkills (
    SkillID INT PRIMARY KEY,
    EmployeeID INT,
    SkillName VARCHAR(50)
);

-- Table6 to store employee projects
CREATE TABLE EmployeeProjects (
    ProjectID INT PRIMARY KEY,
    EmployeeID INT,
    ProjectName VARCHAR(50),
    StartDate DATE,
    EndDate DATE
);

-- Table7 to store employee performance reviews
CREATE TABLE EmployeeReviews (
    ReviewID INT PRIMARY KEY,
    EmployeeID INT,
    ReviewDate DATE,
    Rating INT,
    Comments TEXT
);

-- Table8 to store employee benefits
CREATE TABLE EmployeeBenefits (
    BenefitID INT PRIMARY KEY,
    EmployeeID INT,
    BenefitName VARCHAR(50),
    BenefitType VARCHAR(50),
    BenefitAmount DECIMAL(10, 2)
);

-- Table9 to store employee attendance
CREATE TABLE EmployeeAttendance (
    AttendanceID INT PRIMARY KEY,
    EmployeeID INT,
    AttendanceDate DATE,
    ClockInTime TIME,
    ClockOutTime TIME
);

-- Table10 to store employee training
CREATE TABLE EmployeeTraining (
    TrainingID INT PRIMARY KEY,
    EmployeeID INT,
    TrainingName VARCHAR(50),
    TrainingDate DATE,
    Trainer VARCHAR(50)
);
SELECT* FROM Employees,DEPARTMENTS;
SELECT* FROM EMPLOYEES_ADRESSES,EmployeeContacts,EmployeeSkills,
EmployeeProjects,EmployeeReviews, EmployeeBenefits, EmployeeAttendance, EmployeeTraining;