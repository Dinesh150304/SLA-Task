use student;

create table Department (
id int primary key ,
department_name varchar(25)
);
create table EmpDept (
    id int primary key,
    name varchar(50),
    department_id int
);


insert into Department (id,department_name) values
(1,'IT'),
(2,'HR'),
(3,'Finance'),
(4,'Marketing'),
(5,'Operations');

insert into EmpDept (id,name,department_id) values
(101, 'Madan', 1),
(102, 'Karthik', 2),
(103, 'Prakash', 3),
(104, 'Surya', 4),
(105, 'Deva', 5);

-- Task 1

select e.name, d.department_name from EmpDept e inner join department d on e.department_id =d.id ;

-- Task 2

select d.department_name as Department , e.name as Employee_name
from department d
inner join empdept e on d.id = e.Department_id; 

-- Task 3

select d.department_name as Department ,count(d.id) as EmpID
from Department d
inner join empdept e on d.id = e.department_id
group by d.Department_name;

-- Task 4

select e.name, e.department_id , e.id 
from Empdept e
inner join Department d on e.department_id =  d.id
where d.department_name ='HR';

-- Task 5

select e.name as Empname, e.department_id as DepId
from  Empdept e
inner join Department d on e.department_id = d.id;

-- Task 6

select e.name as Empname, d.department_name as Department
from empdept e
inner join Department d on d.id = e.department_id 
order by d.department_name;




