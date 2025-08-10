drop database if exists asses;
create database asses;
use asses;

create table worker (
worker_id int,
first_name varchar(25),
last_name varchar(25),
salary int,
joining_date datetime,
department VARCHAR(50)
);
INSERT INTO Worker 
VALUES 
(1, 'Monika', 'Arora', 100000, '2014-02-20 09:00:00', 'HR'),
(2, 'Niharika', 'Verma', 80000, '2014-06-11 09:00:00', 'Admin'),
(3, 'Vishal', 'Singhal', 300000, '2014-02-20 09:00:00', 'HR'),
(4, 'Amitabh', 'Singh', 500000, '2014-02-20 09:00:00', 'Admin'),
(5, 'Vivek', 'Bhati', 500000, '2014-06-11 09:00:00', 'Admin'),
(6, 'Vipul', 'Diwan', 200000, '2014-06-11 09:00:00', 'Account'),
(7, 'Satish', 'Kumar', 75000, '2014-01-20 09:00:00', 'Account'),
(8, 'Geetika', 'Chauhan', 90000, '2014-04-11 09:00:00', 'Admin');


## Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME
##  and DEPARTMENT Descending. 

select * from worker
order by  FIRST_NAME asc , DEPARTMENT desc;


/* Write an SQL query to print details for Workers with the first names “Vipul” and “Satish”
from the Worker table. */

select * from worker
where FIRST_NAME IN ('Vipul', 'Satish');


/* Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and
contains six alphabets. 
. */

select * from worker 
where FIRST_NAME like '_____h' AND LENGTH(FIRST_NAME) = 6;


/* Write an SQL query to show the top 6 records of a table */

select* from worker 
order by salary desc
limit 6;

/* Write an SQL query to fetch the departments that have less than five people in them. */

select  department , COUNT(*) AS numofpeople
from worker
group by department 
having count(*)< 5;


/* Write an SQL query to show all departments along with the number of people in there */

select distinct department , count(*) as numofpeople
 from worker
group by department;

/* Write an SQL query to print the name of employees having the highest salary in each
department. */

    select
     department , max(Salary) as max
    from worker 
    group by department ;
    
  /*  Write an SQL query to print details of the Workers whose SALARY lies between 1. */
  
  select * from worker 
  where SALARY between 50000 and 100000;
  
  # Write an SQL query to fetch duplicate records having matching data in some fields of a table. 
  
  SELECT DISTINCT FIRST_NAME , LAST_NAME , COUNT(*) AS NUM
  FROM WORKER
  GROUP BY FIRST_NAME , LAST_NAME;
  
    
    use asses;
    
    CREATE TABLE STUDENT (
    StdID INT PRIMARY KEY,
    StdName VARCHAR(50),
    Sex VARCHAR(10),
    Percentage INT,
    Class INT,
    Sec CHAR(1),
    Stream VARCHAR(20),
    DOB DATE
);

    
INSERT INTO STUDENT (StdID, StdName, Sex, Percentage, Class, Sec, Stream, DOB) VALUES
(1001, 'Surekha Joshi', 'Female', 82, 12, 'A', 'Science', '1998-03-03'),
(1002, 'MAAHI AGARWAL', 'Female', 76, 11, 'C', 'Commerce', '2008-11-23'),
(1003, 'Sanam Verma', 'Male', 59, 11, 'C', 'Commerce', '2006-06-29'),
(1004, 'Ronit Kumar', 'Male', 63, 10, 'B', 'Commerce', '1997-11-05'),
(1005, 'Dipesh Pulkit', 'Male', 71, 12, 'A', 'Science', '2003-09-14'),
(1006, 'JAHANVI Puri', 'Female', 60, 11, 'C', 'Commerce', '2008-11-07'),
(1007, 'Sanam Kumar', 'Male', 72, 11, 'C', 'Commerce', '1998-03-08'),
(1008, 'SAHIL SARAS', 'Male', 75, 11, 'C', 'Commerce', '2008-11-11'),
(1009, 'AKSHRA AGARWAL', 'Female', 80, 10, 'F', 'Commerce', '1996-10-01'),
(1010, 'STUTI MISHRA', 'Female', 85, 11, 'C', 'Science', '2008-11-23'),
(1011, 'HARSH AGARWAL', 'Male', 83, 12, 'A', 'Science', '1998-03-08'),
(1012, 'NIKUNJ AGARWAL', 'Male', 62, 10, 'C', 'Commerce', '1998-06-28'),
(1013, 'ARITI SAXENA', 'Female', 78, 11, 'C', 'Science', '2008-11-23'),
(1014, 'TANI RASTOGI', 'Female', 82, 12, 'A', 'Science', '2008-11-23');

SELECT * FROM student ; 
SELECT StdName, DOB 
FROM student ;  

SELECT * FROM student WHERE percentage >= 80;  
SELECT StdName, Stream, Percentage WHERE percentage > 80;  
SELECT * From student
 WHERE stream = 'Science' AND percentage > 75;