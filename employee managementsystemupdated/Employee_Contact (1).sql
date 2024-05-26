-- Table to store employee contact information
CREATE TABLE EmployeeContacts (
    ContactID INT PRIMARY KEY,
    EmployeeID INT,
    Email VARCHAR(50),
    Phone VARCHAR(15),
    FOREIGN KEY(EmployeeID)
    REFERENCES Employees(EmployeeID)
);