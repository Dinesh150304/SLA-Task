create table Employe (
    empId int primary key,
    Name varchar(50),
    Gender char(1),
    Department varchar(50),
    ExperienceYears int
);


insert into Employe (empId, Name, Gender, Department, ExperienceYears) values
(101, 'Ram', 'M', 'Developer', 3),
(102, 'Priya', 'F', 'HR', 2),
(103, 'Karthik', 'M', 'Developer', 5),
(104, 'Anjali', 'F', 'Marketing', 4),
(105, 'Arjun', 'M', 'Developer', 6),
(106, 'Sneha', 'F', 'HR', 3),
(107, 'Ravi', 'M', 'Developer', 7),
(108, 'Divya', 'F', 'Developer', 8),
(109, 'Suresh', 'M', 'Finance', 5),
(110, 'Meena', 'F', 'Finance', 6);

select *
from Employe
where Department in (
    select Department
    from Employe
    group by Department
    having avg(ExperienceYears) >= 5
);



