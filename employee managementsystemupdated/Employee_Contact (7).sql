-- Table to store department information
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50),
    EmployeeID INT,
    FOREIGN KEY(EmployeeID)
    REFERENCES Employees(EmployeeID)
);