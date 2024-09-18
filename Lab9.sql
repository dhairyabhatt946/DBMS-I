--Sub Queries

create table STUDENT_DATA (
	Rno int,
	Name varchar(50),
	City varchar(50),
	DID int
);

insert into STUDENT_DATA values
(101, 'Raju', 'Rajkot', 10),
(102, 'Amit', 'Ahmedabad', 20),
(103, 'Sanjay', 'Baroda', 40),
(104, 'Neha', 'Rajkot', 20),
(105, 'Meera', 'Ahmedabad', 30),
(106, 'Mahesh', 'Baroda', 10);

select * from STUDENT_DATA;

create table ACADEMIC (
	Rno int,
	SPI decimal(4,2),
	Bklog int
);

insert into ACADEMIC values
(101, 8.8, 0),
(102, 9.2, 2),
(103, 7.6, 1),
(104, 8.2, 4),
(105, 7.0, 2),
(106, 8.9, 3);

select * from ACADEMIC;

create table DEPARTMENT (
	DID int,
	DName varchar(50)
);

insert into DEPARTMENT values
(10, 'Computer'),
(20, 'Electrical'),
(30, 'Mechanical'),
(40, 'Civil');

select * from DEPARTMENT;


--Part – A:


--1. Display details of students who are from computer department.
select * from STUDENT_DATA
where DID = (select DID from DEPARTMENT where DName = 'Computer');

--2. Displays name of students whose SPI is more than 8.
select Name from STUDENT_DATA
where Rno in (select rno from ACADEMIC where spi > 8);

--3. Display details of students of computer department who belongs to Rajkot city.
select * from STUDENT_DATA
where city = 'Rajkot'
and DID in (select did from DEPARTMENT where dname = 'Computer'); 

--4. Find total number of students of electrical department.
select count(Rno)
from STUDENT_DATA
where DID in (select did from DEPARTMENT where DName = 'Electrical');

--5. Display name of student who is having maximum SPI.
select name
from STUDENT_DATA
where Rno = (select rno from ACADEMIC where SPI = (select max(spi) from ACADEMIC));

--6. Display details of students having more than 1 backlog.
select * from STUDENT_DATA
where Rno in (select Rno from ACADEMIC where Bklog > 1);


--Part – B:


--1. Display name of students who are either from computer department or from mechanical department.
select name
from STUDENT_DATA
where did in (select did from DEPARTMENT where DName in ('Computer', 'Mechanical'));

--2. Display name of students who are in same department as 102 studying in.
select name
from STUDENT_DATA
where Rno <> 102 and DID = (select did from STUDENT_DATA where Rno = 102);


--Part – C:


--1. Display name of students whose SPI is more than 9 and who is from electrical department.
select name
from STUDENT_DATA
where Rno in (select Rno from ACADEMIC where SPI > 9) and DID in (select did from DEPARTMENT where DName = 'Electrical');

--2. Display name of student who is having second highest SPI.
select name
from STUDENT_DATA
where rno = 
(select rno from ACADEMIC where spi = (select max(spi) from ACADEMIC where SPI < (select max(spi) from ACADEMIC)));

--3. Display city names whose students branch wise SPI is 9.2
select city
from STUDENT_DATA
where Rno in (select Rno from ACADEMIC where SPI = 9.2);


--SET Operators


--Part – A:

--Create below two tables as per following data.

CREATE TABLE Computer (
    RollNo INT,
    Name VARCHAR(50)
);


INSERT INTO Computer (RollNo, Name) VALUES
(101, 'Ajay'),
(109, 'Haresh'),
(115, 'Manish');

CREATE TABLE Electrical (
    RollNo INT PRIMARY KEY,
    Name VARCHAR(50)
);

INSERT INTO Electrical (RollNo, Name) VALUES
(105, 'Ajay'),
(107, 'Mahesh'),
(115, 'Manish');

--1. Display name of students who is either in Computer or in Electrical.
select name from Computer
union select name from Electrical;

--2. Display name of students who is either in Computer or in Electrical including duplicate data.
select name from Computer
union all select name from Electrical;

--3. Display name of students who is in both Computer and Electrical.
select name from computer
intersect select name from Electrical;

--4. Display name of students who are in Computer but not in Electrical.
select name from Computer
except select name from Electrical;

--5. Display name of students who are in Electrical but not in Computer.
select name from Electrical
except select name from Computer;

--6. Display all the details of students who are either in Computer or in Electrical.
select * from Computer
union select * from Electrical;

--7. Display all the details of students who are in both Computer and Electrical.select * from Computerintersect select * from Electrical;--Part – B:


--Create below two tables as per following data.CREATE TABLE Emp_DATA (
    EID INT,
    Name VARCHAR(50)
);

INSERT INTO Emp_DATA (EID, Name) VALUES
(1, 'Ajay'),
(9, 'Haresh'),
(5, 'Manish');

CREATE TABLE Customer (
    CID INT,
    Name VARCHAR(50)
);

INSERT INTO Customer (CID, Name) VALUES
(5, 'Ajay'),
(7, 'Mahesh'),
(5, 'Manish');

--1. Display name of persons who is either Employee or Customer.
select name from Emp_DATA
union select name from Customer;

--2. Display name of persons who is either Employee or Customer including duplicate data.
select name from Emp_DATA
union all select name from Customer;

--3. Display name of persons who is both Employee as well as Customer.
select name from Emp_DATA
intersect select name from Customer;

--4. Display name of persons who are Employee but not Customer.
select name from Emp_DATA
except select name from Customer;

--5. Display name of persons who are Customer but not Employee.
select name from Customer
except select name from Emp_DATA;


--Part – C:


--1. Perform all the queries of Part-B but display ID and Name columns instead of Name only.

--Display name of persons who is either Employee or Customer.
select * from Emp_DATA
union select * from Customer;

--Display name of persons who is either Employee or Customer including duplicate data.
select * from Emp_DATA
union all select * from Customer;

--Display name of persons who is both Employee as well as Customer.
select * from Emp_DATA
intersect select * from Customer;

--Display name of persons who are Employee but not Customer.
select * from Emp_DATA
except select * from Customer;

--Display name of persons who are Customer but not Employee.
select * from Customer
except select * from Emp_DATA;