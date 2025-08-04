create table EmployeeData (
    empId int primary key,
    Name varchar(50),
    Gender char(1),
    Department varchar(50),
    Salary int,
    ExperienceYears int
);

insert into EmployeeData (empId, Name, Gender, Department, Salary, ExperienceYears) VALUES
(101, 'Ram', 'M', 'Developer', 75000, 3),
(102, 'Priya', 'F', 'Developer', 80000, 2),
(103, 'Karthik', 'M', 'Developer', 82000, 5),
(104, 'Anjali', 'F', 'Developer', 78000, 4),
(105, 'Arjun', 'M', 'Developer', 85000, 6),
(106, 'Sneha', 'F', 'Developer', 91000, 3),
(107, 'Ravi', 'M', 'Developer', 86000, 2),
(108, 'Divya', 'F', 'Developer', 89000, 7),
(109, 'Suresh', 'M', 'HR', 68000, 5),
(110, 'Meena', 'F', 'Finance', 86000, 4);

select Department,
       count(empId) as EmployeeCount,
       avg(Salary) as AverageSalary
FROM EmployeeData
group  by Department
having COUNT(empId) > 7 and avg(Salary) > 70000;

select * from EmployeeData;