--Tables created using design mode

SELECT * FROM STU_INFO;
SELECT * FROM RESULT;
select * from employee_master;


--Part – A:


--1. Combine information from student and result table using cross join or Cartesian product.
select stu_info.*, result.*
from STU_INFO
cross join RESULT

--2. Perform inner join on Student and Result tables.
select STU_INFO.*, RESULT.*
from STU_INFO
inner join RESULT
on STU_INFO.rno = RESULT.rno;

--3. Perform the left outer join on Student and Result tables.
select STU_INFO.*, RESULT.*
from STU_INFO
left outer join RESULT
on STU_INFO.Rno = RESULT.Rno;

--4. Perform the right outer join on Student and Result tables.
select STU_INFO.*, RESULT.*
from STU_INFO
right outer join RESULT
on STU_INFO.Rno = result.Rno;

--5. Perform the full outer join on Student and Result tables.
select STU_INFO.*, result.*
from STU_INFO
full outer join RESULT
on STU_INFO.rno = result.rno;

--6. Display Rno, Name, Branch and SPI of all students.
select STU_INFO.Rno, STU_INFO.Name, STU_INFO.Branch, RESULT.SPI
from STU_INFO
inner join RESULT
on STU_INFO.Rno = result.Rno;

--7. Display Rno, Name, Branch and SPI of CE branch’s student only.
select STU_INFO.Rno, STU_INFO.Name, STU_INFO.Branch, RESULT.SPI
from STU_INFO
inner join RESULT
on STU_INFO.Rno = result.Rno
where STU_INFO.Branch = 'CE';

--8. Display Rno, Name, Branch and SPI of other than EC branch’s student only.
select STU_INFO.Rno, STU_INFO.Name, STU_INFO.Branch, RESULT.SPI
from STU_INFO
inner join RESULT
on STU_INFO.Rno = result.Rno
where STU_INFO.Branch = 'EC';

--9. Display average result of each branch.
select STU_INFO.Branch, AVG(RESULT.SPI)
from STU_INFO
inner join RESULT
on STU_INFO.Rno = result.Rno
group by stu_info.branch;

--10. Display average result of CE and ME branch.
select STU_INFO.Branch, AVG(result.spi)
from stu_info
inner join result
on STU_INFO.Rno = RESULT.Rno
where STU_INFO.Branch in ('CE', 'ME')
group by STU_INFO.Branch;


--Part – B:


--1. Display average result of each branch and sort them in ascending order by SPI.
select STU_INFO.Branch, AVG(RESULT.SPI)
from STU_INFO
inner join RESULT
on STU_INFO.Rno = RESULT.Rno
group by STU_INFO.Branch
order by AVG(result.spi);

--2. Display highest SPI from each branch and sort them in descending order.
select STU_INFO.Branch, MAX(RESULT.SPI)
from STU_INFO
inner join RESULT
on STU_INFO.Rno = RESULT.Rno
group by STU_INFO.Branch
order by max(result.spi) desc;


--Part – C:


--1. Retrieve the names of employee along with their manager’s name from the Employee table.
select e.name as employee, m.name as manager
from EMPLOYEE_MASTER as e
inner join EMPLOYEE_MASTER as m
on e.ManagerNo = m.EmployeeNo;