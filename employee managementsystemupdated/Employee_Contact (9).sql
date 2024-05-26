-- Table to store employee attendance
CREATE TABLE EmployeeAttendance (
    AttendanceID INT PRIMARY KEY,
    EmployeeID INT,
    AttendanceDate DATE,
    ClockInTime TIME,
    ClockOutTime TIME,
    FOREIGN KEY(EmployeeID)
    REFERENCES Employees(EmployeeID)
);