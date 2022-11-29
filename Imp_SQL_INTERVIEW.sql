SELECT * FROM db_employee.emp;
USE db_employee;

-- Max Salary (50000)
SELECT max(Salary) FROM emp;
 -- 2nd highest Salary (40000)
 SELECT max(Salary) FROM emp 
 WHERE Salary NOT IN (SELECT max(Salary) FROM emp);
 
 -- fIND nth highest salary
 SELECT id,Salary FROM emp e1
 WHERE N-1 = (SELECT COUNT(Distinct Salary) FROM emp e2
 WHERE (e2.Salary>e1.Salary));
 -- FIND 3rd HIGHEST SALARY
 SELECT id,Salary FROM emp e1
 WHERE 2 = (SELECT COUNT(DISTINCT Salary) FROM emp e2
 WHERE (e2.Salary>e1.Salary));
 
 -- ANOTHER APPROACH USING LIMIT(3rd Highest Salary)
 SELECT id,Salary FROM emp
 ORDER BY Salary DESC
 LIMIT 2,1; 
 -- 2 meaning select rows after 2nd and 1 meaning how many rows we are fetching 
 
 
 -- Write SQL Query to find duplicate rows in a table 
 -- "*" will select all the column values for the rows
 SELECT *, COUNT(Salary)
 FROM emp
 group by Salary;
 
  SELECT *, COUNT(Salary)
 FROM emp
 group by Salary
 HAVING COUNT(Salary)>1;
 
 -- Calculate even and odd records FROM a table
 -- EVEN 
 SELECT * FROM emp
 WHERE MOD(id,2)=0;
 -- ODD 
  SELECT * FROM emp
 WHERE MOD(id,2)=1;
 
 -- Find  DUPLICATE rows in a table 
 SELECT *, COUNT(id)
 FROM db_employee.emp
 GROUP BY id;
 
 --  this will give us our duplicate rows 

 SELECT *, COUNT(id)
 FROM db_employee.emp
 GROUP BY id
 HAVING COUNT(id)>1;


-- FIND First and Last record from the table
-- FIRST RECORD
SELECT * FROM db_employee.emp
WHERE id =(SELECT MIN(id)
FROM db_employee.emp);
-- LAST RECORD 
SELECT * FROM db_employee.emp
WHERE id =(SELECT MAX(id)
FROM db_employee.emp);

 -- COPY ALL Rows of a table
 --  1) First we will create a table this will copy all values 
 create table emp_detail AS SELECT * from db_employee.emp;
 --  2)this will copy only specific values
 create table emp_salary AS Select salary from db_employee.emp;
 --  3)this will just copy the schema not the values of the table 
 create table emp_s AS select * from db_employee.emp  
 where 3=4;
 
 
 -- FIND the list of employees working in the same department 
SELECT DISTINCT E.ID, E.FirstName, E.LastName, E.DepartmentName
FROM employees E , employees E1 -- here E and E1 are aliases and employees is our table name 
WHERE E.DepartmentName=E1.DepartmentName 
AND E.ID != E1.ID;

-- How to capitalize FirstLetter of a String 
CREATE TABLE Name (
   FirstName varchar(255)
);
INSERT INTO Name (FirstName) VALUES ('sadu');
INSERT INTO Name (FirstName) VALUES ('annie');
INSERT INTO Name (FirstName) VALUES ('erikso');
INSERT INTO Name (FirstName) VALUES ('tina');
INSERT INTO Name (FirstName) VALUES ('ariana');

SELECT FirstName, Upper(LEFT(FirstName,1))+SUBSTRING(FirstName,2,len(FirstName)) as name
From db_employee.Name;

SELECT LEFT(FirstName,1) From db_employee.Name; -- Extract first letter
SELECT UPPER(LEFT(FirstName,1)) From db_employee.Name; -- capitailize the first letter
SELECT UPPER(LEFT(FirstName,1)) + lower(substring(FirstName, 2, length(FirstName))); -- NOT GIVING CORRECT ANS

Select FirstName, CONCAT(UPPER(LEFT(FirstName,1)),lower(substring(FirstName, 2, length(FirstName)))) 
as Name From db_employee.Name; -- CORRECT ANS PRODUCED 

 
 
 