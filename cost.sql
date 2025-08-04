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
(201, 'Aarthi', 'F', 'Developer', 250000, 6),
(202, 'Bala', 'M', 'Developer', 260000, 7),
(203, 'Chitra', 'F', 'Developer', 270000, 5),
(204, 'David', 'M', 'Developer', 280000, 8),
(205, 'Elena', 'F', 'Developer', 290000, 9),
(206, 'Faizal', 'M', 'Developer', 300000, 10),
(207, 'Gayathri', 'F', 'Developer', 310000, 6),
(208, 'Hari', 'M', 'Developer', 320000, 7),
(209, 'Ishita', 'F', 'Developer', 330000, 4),
(210, 'Jack', 'M', 'Developer', 340000, 3);


select Department ,
sum(salary) as TotalSalary 
from Employee 
group by Department
having sum(salary) > 250000;

select * from Employee;
