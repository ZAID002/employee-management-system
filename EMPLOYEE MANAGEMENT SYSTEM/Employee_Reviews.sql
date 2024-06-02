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