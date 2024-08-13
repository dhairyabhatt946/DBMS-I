----Part � A:


----Views (First create a view then display all views)


create table STUDENT_INFO (
	RNo int,
	Name varchar(50),
	Branch varchar(20),
	SPI decimal(4,2),
	Bklog int
);

select * from STUDENT_INFO;

insert into STUDENT_INFO values
(101, 'Raju', 'CE', 8.80, 0),
(102, 'Amit', 'CE', 2.20, 3),
(103, 'Sanjay', 'ME', 1.50, 6),
(104, 'Neha', 'EC', 7.65, 1),
(105, 'Meera', 'EE', 5.52, 2),
(106, 'Mahesh', 'EC', 4.50, 3);

select * from STUDENT_INFO;

--1. Create a view Personal with all columns.
create view Personal
as select *
from STUDENT_INFO;

select * from Personal;

--2. Create a view Student_Details having columns Name, Branch & SPI.
create view Student_Detail
as select name, branch, spi
from STUDENT_INFO;

select * from Student_Detail;

--3. Create a view AcademicData having columns RNo, Name, Branch.
create view AcademicData
as select RNo, name, branch
from STUDENT_INFO;

select * from AcademicData;

--4. Create a view Student_ bklog having all columns but students whose bklog more than 2.
create view Student_bklog
as select *
from STUDENT_INFO
where Bklog > 2;

select * from Student_bklog;

--5. Create a view Student_Pattern having RNo, Name & Branch columns in which Name consists of four 
--letters.
create view Student_Pattern
as select RNo, Name, Branch
from STUDENT_INFO
where name like '____';

select * from Student_Pattern;

--6. Insert a new record to AcademicData view. (107, Meet, ME)
insert into AcademicData values (107, 'Meet', 'ME');

select * from AcademicData;
select * from STUDENT_INFO;

--7. Update the branch of Amit from CE to ME in Student_Details view.
update Student_Detail
set Branch = 'ME'
where Name = 'Amit';

select * from Student_Detail;
select * from STUDENT_INFO;

--8. Delete a student whose roll number is 104 from AcademicData view.
delete from AcademicData
where RNo = 104;

select * from AcademicData;
select * from STUDENT_INFO;


--Part � B:


--1. Create a view that displays information of all students whose SPI is above 8.5
create view vw_spi_info
as select *
from STUDENT_INFO
where spi > 8.5;

select * from vw_spi_info;

--2. Create a view that displays 0 backlog students.
create view vw_zero_backlog
as select *
from STUDENT_INFO
where Bklog = 0;

select * from vw_zero_backlog;

--3. Create a view Computerview that displays CE branch data only.
create view Computerview
as select *
from STUDENT_INFO
where Branch = 'CE';

select * from Computerview;


--Part � C:


--1. Create a view Result_EC that displays the name and SPI of students with SPI less than 5 of branch EC.
create view Result_EC
as select Name, SPI
from STUDENT_INFO
where BRANCH = 'EC' and SPI < 5;

select * from Result_EC;

--2. Update the result of student MAHESH to 4.90 in Result_EC view.
update Result_EC
set SPI = 4.90
where Name = 'Mahesh';

select * from Result_EC;

--3. Create a view Stu_Bklog with RNo, Name and Bklog columns in which name starts with �M� and having 
--bklogs more than 5.
create view Stu_Bklog
as select RNo, Name, Bklog
from STUDENT_INFO
where name like 'M%' and Bklog > 5;

select * from Stu_Bklog;

--4. Drop Computerview form the database.
drop view Computerview;