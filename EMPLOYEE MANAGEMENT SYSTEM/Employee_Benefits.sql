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