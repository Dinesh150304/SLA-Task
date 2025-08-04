use task; 
create table Employee (
    empId int primary key,
    Name varchar(50),
    Gender char(1),
    Department varchar(50),
    Salary int,
    ExperienceYears int
);


insert into Employee (empId, Name, Gender, Department, Salary, ExperienceYears) values
(101, 'Ram', 'M', 'Developer', 75000, 3),
(102, 'Priya', 'F', 'HR', 68000, 2),
(103, 'Karthik', 'M', 'Developer', 80000, 5),
(104, 'Anjali', 'F', 'Marketing', 72000, 4),
(105, 'Arjun', 'M', 'Developer', 85000, 6);

select Department , count(empid) as total
from employees
group by department;
