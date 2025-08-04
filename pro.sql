create table ProjectAssignment (
    empId int,
    ProjectId int,
    HoursSpent int
);

insert into ProjectAssignment (empId, ProjectId, HoursSpent) values
(101, 1, 80),
(101, 2, 70),
(101, 3, 60),
(102, 1, 100),
(102, 2, 50),
(103, 1, 90),
(103, 2, 70),
(103, 3, 65),
(104, 1, 40),
(104, 2, 30),
(105, 1, 60),
(105, 2, 50),
(105, 3, 40),
(105, 4, 30);


select ProjectId,
       SUM(HoursSpent) as TotalHours
from ProjectAssignment
group by  ProjectId;
