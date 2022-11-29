Use db_employee;

CREATE TABLE COMPUTER(
CompId int(11) PRIMARY KEY,
Brand VARCHAR(50),
CompModel VARCHAR(50),
ManufactureDate DATE);


CREATE TABLE EMPLOYEE(
EmpId int(5) PRIMARY KEY,
FirstName VARCHAR(50),
LastName VARCHAR(50),
Salary int(8),
EmailId VARCHAR(50),
ManagerId int(5),
DateOfJoining  DATE,
Dept VARCHAR(10),
CompId int(10) ,
CONSTRAINT FK_CompId FOREIGN KEY (CompId) REFERENCES COMPUTER(CompId));

INSERT INTO COMPUTER VALUES(1001,'Lenovo','T480','2019-06-12');
INSERT INTO COMPUTER VALUES(1002,'Lenovo','T490','2020-08-24');
INSERT INTO COMPUTER VALUES(1003,'SONY','SQ112','2019-12-01');
INSERT INTO COMPUTER VALUES(1004,'SONY','SX1001','2020-12-21');


INSERT INTO EMPLOYEE VALUES(1,'NANDA','KUMAR',50000,'NANDA@GMAIL.COM',NULL,'2012-06-15','IT',1001);
INSERT INTO EMPLOYEE VALUES(2,'BIPLAB','PARIDA',30000,'BPARIDA@YAHOO.COM',1,'2015-12-21','IT',1001);
INSERT INTO EMPLOYEE VALUES(3,'DISHA','PATEL',50000,'DISHAP@GMAIL.COM',NULL,'2013-08-21','HR',NULL);
INSERT INTO EMPLOYEE VALUES(4,'SIBA','PRASAD',90000,'SIBA@GMAIL.COM',3,'2020-06-01','HR',1002);
INSERT INTO EMPLOYEE VALUES(5,'ANUSHKA','SHARMA',20000,'SHARMAA@GMAIL.COM',1,'2021-03-01','IT',NULL);
INSERT INTO EMPLOYEE VALUES(6,'SOMNATH','MAHARANA',65000,'SMAHA@GMAIL.COM',3,'2019-05-07','IT',1003);

-- Q1)Query to Update DateOfJoining to 2012-07-15 for EmpId=1
SELECT * FROM EMPLOYEE;
-- SYNATX FOR UPDATE -- UPDATE tablename SET 
UPDATE EMPLOYEE SET DateOfJoining= '2012-07-15' WHERE EmpId=1;
-- Update is not  DDL statement 
-- UPDATE is a DML statement. its not AUTO COMMIT
-- DDL(Create, DROP, ALTER,Truncate)
-- DML (INSERT<UPDATE<MERGE<DELETE)

-- *****************************************************************
-- Q2)Query to Select all student name where age is greater than 22

SELECT * FROM COMPUTER;
SELECT * FROM EMPLOYEE;
SELECT * FROM Student WHERE age>22;

-- *********************************************************
-- Q3)Find all employee with Salary between 40000 and 80000
SELECT * FROM EMPLOYEE WHERE Salary BETWEEN 40000 AND 80000;
SELECT *FROM EMPLOYEE;

-- *********************************************************
-- Q4)Find the name of employee beginning with S

-- NOTE:: We can not use '=' equal operator here we have to use LIKE 
SELECT * FROM EMPLOYEE WHERE FirstName LIKE'S%';

-- *********************************************************
-- Q5) Query to Display Full name 
-- WE have to use --> CONCAT FUNCTION 
--
SELECT CONCAT(FirstName, LastName)  FROM EMPLOYEE; -- This will not produce space b/w first and last name 

SELECT CONCAT(FirstName, ' ',LastName) AS FullName FROM EMPLOYEE;
-- *********************************************************
-- Q6) Query to Fetch all details of employees whose Employee FirstName ends with Alphabet 'A'
-- and contains 4 Alphabets

-- Q7) Query to Fetch all details of employees excluding the  employees with first names, "ANUSHKA"
-- "SOMNATH" from the employee table 

-- Q8) QUERY TO display the CurrentDate


-- Q9) Query to get day of last day of the previous month 
-- Q10) fetch the employee first names and replace the A with '@'.

-- Q11)
-- Q12)
-- Q13)
-- Q14)

