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