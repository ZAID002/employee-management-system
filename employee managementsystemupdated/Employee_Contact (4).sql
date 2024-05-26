-- Table to store employee skills
CREATE TABLE EmployeeSkills (
    SkillID INT PRIMARY KEY,
    EmployeeID INT,
    SkillName VARCHAR(50),
    FOREIGN KEY(EmployeeID)
    REFERENCES Employees(EmployeeID)
);