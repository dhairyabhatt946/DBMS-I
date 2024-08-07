--Math functions


--Part – A:


--1. Display the result of 5 multiply by 30.
select 5*30 as result;

--2. Find out the absolute value of -25, 25, -50 and 50.
select abs(-25), abs(25), abs(-50), abs(50);

--3. Find smallest integer value that is greater than or equal to 25.2, 25.7 and -25.2.
select CEILING(25.2), CEILING(25.7), CEILING(-25.2);

--4. Find largest integer value that is smaller than or equal to 25.2, 25.7 and -25.2.
select FLOOR(25.2), FLOOR(25.7), FLOOR(-25.2);

--5. Find out remainder of 5 divided 2 and 5 divided by 3.
select 5%2, 5%3;

--6. Find out value of 3 raised to 2nd power and 4 raised 3rd power.
select power(3,2), power(4,3);

--7. Find out the square root of 25, 30 and 50.
select SQRT(25), SQRT(30), sqrt(50);

--8. Find out the square of 5, 15, and 25.
select square(5), square(15), square(25);

--9. Find out the value of PI.
select PI() as PI;

--10. Find out round value of 157.732 for 2, 0 and -2 decimal points.
select round(157.732,2), round(157.732,0), round(157.732, -2);

--11. Find out exponential value of 2 and 3.
select EXP(2), exp(3);

--12. Find out logarithm having base e of 10 and 2.
select log(10), log(2);

--13. Find out logarithm having base b having value 10 of 5 and 100.
select log10(5), log10(100);

--14. Find sine, cosine and tangent of 3.1415.
select sin(3.1415), cos(3.1415), tan(3.1415);

--15. Find sign of -25, 0 and 25.
select sign(-25), sign(0), sign(25);

--16. Generate random number using function.
select rand();


--Part – B:

--Create and Insert the following records in the EMP_MASTER table.
create table EMP_MASTER (
	empno int,
	empname varchar(20),
	joiningdate datetime,
	salary decimal(12,2),
	commission int,
	city varchar(20),
	deptcode varchar(20)
);

insert into EMP_MASTER values
(101, 'Keyur', '02-1-5', 12000, 4500, 'Rajkot', '3@g'),
(102, 'Hardik', '04-2-15', 14000, 2500, 'Ahmedabad', '3@'),
(103, 'Kajal', '06-3-14', 15000, 3000, 'Baroda', '3-GD'),
(104, 'Bhoomi', '05-6-23', 12500, 1000, 'Ahmedabad', '1A3D'),
(105, 'Harmit', '04-2-15', 14000, 2000, 'Rajkot', '312A');

select * from EMP_MASTER;

--1. Display the result of Salary plus Commission.
select empname, salary + commission as Total
from EMP_MASTER

--2. Find smallest integer value that is greater than or equal to 55.2, 35.7 and -55.2.
select ceiling(55.2), ceiling(35.7), ceiling(-55.2);

--3. Find largest integer value that is smaller than or equal to 55.2, 35.7 and -55.2.
select floor(55.2), floor(35.7), floor(-55.2);

--4. Find out remainder of 55 divided 2 and 55 divided by 3.
select 55%2, 55%3;

--5. Find out value of 23 raised to 2nd power and 14 raised 3rd power.
select power(23,2), power(14,3);


--Part – C:

--1. Find out the square root of 36, 49 and 81.
select sqrt(36), sqrt(49), sqrt(81);

--2. Find out the square of 3, 9, and 12.
select square(3), square(9), square(12);

--3. Find out round value of 280.8952 for 2, 0 and -2 decimal points.
select round(280.8952, 2), round(280.8952, 0), round(280.8952, -2);

--4. Find sine, cosine and tangent of 4.2014.
select sin(4.2014), cos(4.2014), tan(4.2014);

--5. Find sign of -55, 0 and 95.
select sign(-55), sign(0), sign(95);



--String functions


--Part – A:


--1. Find the length of following. (I) NULL (II) ‘ hello ’ (III) Blank
select len(null), len('hello'), len('');

--2. Display your name in lower & upper case.
select UPPER('Dhairya'), LOWER('Dhairya');

--3. Display first three characters of your name.
select LEFT('Dhairya', 3);
select SUBSTRING('Dhairya', 1, 3);

--4. Display 3rd to 10th character of your name.
select SUBSTRING('Dhairya Bhatt', 3, 8);

--5. Write a query to convert ‘abc123efg’ to ‘abcXYZefg’ & ‘abcabcabc’ to ‘ab5ab5ab5’ using REPLACE.
select replace('abc123efg', '123', 'XYZ');
select replace('abcabcabc', 'c', '5');

--6. Write a query to display ASCII code for ‘a’,’A’,’z’,’Z’, 0, 9.
select ASCII('a'), ASCII('A'), ASCII('z'), ASCII('Z'), ASCII(0), ASCII(9);

--7. Write a query to display character based on number 97, 65,122,90,48,57.
select CHAR(97), char(65), char(122), char(90), char(48), char(57);

--8. Write a query to remove spaces from left of a given string ‘hello world ‘.
select ltrim('    hello world ');

--9. Write a query to remove spaces from right of a given string ‘ hello world ‘.
select rtrim('     hello world    ');

--10. Write a query to display first 4 & Last 5 characters of ‘SQL Server’.
select left('SQL Server', 4), right('SQL Server', 5);

--11. Write a query to convert a string ‘1234.56’ to number (Use cast and convert function).
select CAST('1234.56' as decimal(6,2));
select CONVERT(decimal(6,2), '1234.56');

--12. Write a query to convert a float 10.58 to integer (Use cast and convert function).
select cast(10.58 as int);
select convert(int, 10.58);

--13. Put 10 space before your name using function.
select space(10) + 'Dhairya';

--14. Combine two strings using + sign as well as CONCAT ().
select 'Dhairya' + ' ' + 'Bhatt';
select CONCAT('Dhairya', ' ', 'Bhatt');
select CONCAT_WS(' ', 'Dhairya', 'Pareshbhai', 'Bhatt');

--15. Find reverse of “Darshan”.
select REVERSE('Darshan');

--16. Repeat your name 3 times.
select REPLICATE('Dhairya', 3);


--Part – B:

--Perform following queries on Student table of practical no 5.

--1. Find the length of FirstName and LastName columns.
select len(firstname), len(lastname) 
from student;

--2. Display FirstName and LastName columns in lower & upper case.
select upper(firstname), upper(lastname)
from student;

select lower(firstname), lower(lastname)
from student;

--3. Display first three characters of FirstName column.
select left(firstname, 3)
from student;

--4. Display 3rd to 10th character of Website column.
select SUBSTRING(website, 3, 8)
from student;

--5. Write a query to display first 4 & Last 5 characters of Website column.
select left(website, 4), right(website, 5)
from student;


--Part – C:

--Perform following queries on Student table of practical no 5.

--1. Put 10 space before FirstName using function.
select space(10) + firstname
from student;

--2. Combine FirstName and LastName columns using + sign as well as CONCAT ().
select firstname + ' ' + lastname
from student;

select CONCAT(firstname, ' ', lastname)
from student;

select CONCAT_WS(' ', firstname, lastname)
from student;

--3. Combine all columns using + sign as well as CONCAT ().
select CONCAT_WS(' ', stuid, firstname, lastname, website, city, address)
from student;

--4. Find reverse of FirstName column.
select REVERSE(firstname)
from student;

--5. Repeat FirstName column 3 times
select REPLICATE(firstname, 3)
from student;

--6. Give the Names which contains 5 characters.
select firstname
from student
where firstname like '_____';

--7. Combine the result as <FirstName> Lives in <City>.
select firstname + ' lives in ' + city
from student;

--8. Combine the result as Student_ID of < FirstName > is <StuID> .
select CONCAT('Student_ID of ', firstname, ' is ', stuid)
from student;



--Date Functions


--Part – A:


--1. Write a query to display the current date & time. Label the column Today_Date.
select GETDATE() as Today_Date;

--2. Write a query to find new date after 365 day with reference to today.
select GETDATE() + 365;

--3. Display the current date in a format that appears as may 5 1994 12:00AM.
select convert(varchar, getdate(), 100);

--4. Display the current date in a format that appears as 03 Jan 1995.
select convert(varchar, getdate(), 106);

--5. Display the current date in a format that appears as Jan 04, 96.
select convert(varchar, getdate(), 107);

--6. Write a query to find out total number of months between 31-Dec-08 and 31-Mar-09.
select DATEDIFF(m, '31-dec-08', '31-mar-09');

--7. Write a query to find out total number of years between 25-Jan-12 and 14-Sep-10.
select DATEDIFF(yyyy, '25-jan-12', '14-sep-10');

--8. Write a query to find out total number of hours between 25-Jan-12 7:00 and 26-Jan-12 10:30.
select DATEDIFF(hh, '25-jan-12 7:00', '26-jan-12 10:30');

--9. Write a query to extract Day, Month, Year from given date 12-May-16.
select DATEPART(day, '12-may-16');
select DATEPART(month, '12-may-16');
select DATEPART(year, '12-may-16');

select DATENAME(day, '12-may-16');
select DATENAME(month, '12-may-16');
select DATENAME(year, '12-may-16');

--10. Write a query that adds 5 years to current date.
select DATEADD(year, 5, getdate());

--11. Write a query to subtract 2 months from current date.
select DATEADD(month, -2, getdate());

--12. Extract month from current date using datename () and datepart () function.
select datepart(mm, getdate());
select datename(mm, getdate());

--13. Write a query to find out last date of current month.
select EOMONTH(getdate());

--14. Calculate your age in years and months.
select datediff(year, '28-jan-2006', getdate()) as years, datediff(month, '28-jan-2024', getdate()) as months;


--Part – B: 

--Create a table EMP_DETAIL and insert the following records in the table.

create table EMP_DETAIL(
	EmpNo int,
	EmpName varchar(50),
	JoiningDate date,
	Salary decimal(12, 2),
	City varchar(20)
);

insert into EMP_DETAIL values
(101, 'Keyur', '02-1-15', 12000, 'Rajkot'),
(102, 'Hardik', '04-2-15', 14000, 'Ahmedabad'),
(103, 'Kajal', '06-3-14', 15000, 'Baroda'),
(104, 'Bhoomi', '05-6-23', 12500, 'Ahmedabad'),
(105, 'Harmit', '04-2-15', 14000, 'Rajkot'),
(106, 'Jay', '07-3-12', 12000, 'Surat');

select * from EMP_DETAIL;

--1. Write a query to find new date after 365 day with reference to JoiningDate.
select dateadd(day, 365, joiningdate)
from EMP_DETAIL;

--2. Display the JoiningDate in a format that appears as may 5 1994 12:00AM.
select convert(varchar, joiningdate, 100)
from EMP_DETAIL;

--3. Display the JoiningDate in a format that appears as 03 Jan 1995.
select convert(varchar, joiningdate, 106)
from EMP_DETAIL;

--4. Display the JoiningDate in a format that appears as Jan 04, 96.
select convert(varchar, joiningdate, 107)
from EMP_DETAIL;

--5. Write a query to find out total number of months between JoiningDate and 31-Mar-09.
select DATEDIFF(mm, '31-mar-09', joiningdate)
from EMP_DETAIL;

--6. Write a query to find out total number of years between JoiningDate and 14-Sep-10.
select datediff(yyyy, '14-sep-10', joiningdate)
from EMP_DETAIL;


--Part – C: 

--1. Write a query to extract Day, Month, Year from JoiningDate.
select datepart(day, joiningdate) as Day, datename(month, joiningdate) as Month, datepart(year, joiningdate) as Year
from EMP_DETAIL;

--2. Write a query that adds 5 years to JoiningDate.
select dateadd(year, 5, joiningdate)
from EMP_DETAIL;

--3. Write a query to subtract 2 months from JoiningDate.
select dateadd(month, -2, joiningdate)
from EMP_DETAIL;

--4. Extract month from JoiningDate using datename () and datepart () function.
select datepart(month, joiningdate), datename(month, joiningdate)
from EMP_DETAIL;

--5. Calculate your age in years and months.
select datediff(year, '28-jan-2006', getdate()) as Years, datediff(month, '28-jan-2024', getdate()) as Month;