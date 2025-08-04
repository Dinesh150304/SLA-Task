-- Step 1: Create the Employees table
CREATE TABLE Employees (
    empId INT PRIMARY KEY,
    Name VARCHAR(50),
    Gender CHAR(1),
    Department VARCHAR(50),
    Salary INT,
    ExperienceYears INT
);

-- Step 2: Insert sample data
INSERT INTO Employees (empId, Name, Gender, Department, Salary, ExperienceYears) VALUES
(101, 'Ram', 'M', 'Developer', 75000, 3),
(102, 'Priya', 'F', 'HR', 68000, 2),
(103, 'Karthik', 'M', 'Developer', 80000, 5),
(104, 'Anjali', 'F', 'HR', 72000, 4),
(105, 'Arjun', 'M', 'Developer', 85000, 6),
(106, 'Sneha', 'F', 'HR', 71000, 3),
(107, 'Ravi', 'M', 'Developer', 86000, 7),
(108, 'Divya', 'F', 'Developer', 90000, 8),
(109, 'Suresh', 'M', 'Developer', 88000, 5),
(110, 'Meena', 'F', 'Finance', 86000, 6);

-- Step 3: Query to find departments where males exceed females by at least 2
SELECT Department,
       SUM(CASE WHEN Gender = 'M' THEN 1 ELSE 0 END) AS MaleCount,
       SUM(CASE WHEN Gender = 'F' THEN 1 ELSE 0 END) AS FemaleCount
FROM Employees
GROUP BY Department
HAVING (SUM(CASE WHEN Gender = 'M' THEN 1 ELSE 0 END) -
        SUM(CASE WHEN Gender = 'F' THEN 1 ELSE 0 END)) >= 2;
