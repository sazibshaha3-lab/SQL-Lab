create table Employee(

EmpID int primary key,
FirstName varchar(50) Not null,
LastName varchar(50) Not null,
Age int Unique,
Salary Decimal(10,2) check(Salary>55000),
Department varchar(20) CHECK(Department IN('HR','IT','Sales'))

);

INSERT INTO Employee(EmpID,FirstName,LastName,Age,Department,Salary)
VALUES
(1,'jhon','Doe',30,'HR',56000);

INSERT INTO Employee(EmpID,FirstName,LastName,Age,Department,Salary)
VALUES
(2,'Jane','Smith',45,'Sales',65000),
(3,'MIke','jhonson',38,'IT',80000),
(4,'Emily','Davis',50,'IT',95000),
(5,'Anna','Brown',29,'HR',68000),
(6,'Mike','Davis',19,'IT',78000);


select * From Employee
Where  Department='IT';

select distinct Department
from Employee;

select * from Employee
where Age>40;

Select * from Employee
where Salary between 50000 and 80000;

select * from Employee
where LastName LIKE 'D%';

select * from Employee
where Department !='HR';

select * from Employee
where Age=30 OR Salary>70000;

select * from Employee
where FirstName='ANNA' AND Department='HR';