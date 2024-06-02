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