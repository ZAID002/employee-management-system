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