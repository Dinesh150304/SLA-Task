create table EmployeesDetail (
    empId int primary key,
    Name varchar(50),
    Gender char(1),
    Department varchar(50),
    Salary int,
    ExperienceYears int
);


insert into EmployeesDetail (empId, Name, Gender, Department, Salary, ExperienceYears) values
(101, 'Ram', 'M', 'Developer', 75000, 3),
(102, 'Priya', 'F', 'HR', 68000, 2),
(103, 'Karthik', 'M', 'Developer', 80000, 5),
(104, 'Anjali', 'F', 'Marketing', 72000, 4),
(105, 'Arjun', 'M', 'Developer', 85000, 6),
(106, 'Sneha', 'F', 'HR', 71000, 3),
(107, 'Ravi', 'M', 'Developer', 86000, 7),
(108, 'Divya', 'F', 'Developer', 90000, 8),
(109, 'Suresh', 'M', 'Finance', 88000, 5),
(110, 'Meena', 'F', 'Finance', 86000, 6);

select Gender,
       avg(Salary) as AverageSalary
from EmployeesDetail
group by Gender
order by AverageSalary desc
limit 1;
