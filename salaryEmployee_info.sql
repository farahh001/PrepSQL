Use db_employee;
-- Q.1)DELETE duplicate records from the employee_info table
-- ---------------------------------------------
select * From employee_info;
-- select id,name,email,department,salary,DOB,gender
DELETE E1
from employee_info E1, employee_info E2
where E1.email = E2.email
and E1.id>E2.id; -- we want to delete only 1 record not both the record
-- if we want to delete both duplicate values we need to specify 
 -- and E1.id != E2.id; 
 
 


-- Q.2) Retrieve the first 4 characters of employee name from the employee_info table
-- ---------------------------------------------
-- we will use SUBSTRING() function
-- SUBSTRING(expression,start,length)
-- FOR EX::: Name = Codeera; SUBSTRING(name,1,4)--> Code
SELECT substring(name,1,4)
From employee_info;

-- Q.3) Find number of employees whose DOB is between 01/06/1995 to 30/06/1998 and are grouped according to gender
-- are grouped according to gender 
-- ---------------------------------------------
-- its saying number of employees --> menaing COUNT() function we have to use
-- 
-- The date has been passed as YYYY-MM-DD
SELECT count(*),gender 
From employee_info
Where DOB 
between '1995-01-01' and '1998-06-30'
group by gender;
-- If The date has been passed as MM-DD-YYYY
SELECT count(*),gender
FROM employee_info
where DOB
BETWEEN 
str_to_date('01/01/1995','%m/%d/%Y')
AND
str_to_date('06/30/1998','%m/%d/%Y')
group by gender;
-- str_to_date() function returns a date based on a string anf a format 
-- '%d/%m/%Y'--> Y is capital but d and m is NOT
SELECT count(*),gender
FROM employee_info
where DOB
BETWEEN 
str_to_date('01/01/1995','%d/%m/%Y')
AND
str_to_date('30/06/1998','%d/%m/%Y')
group by gender;


-- Q.4) Fetch all the records from the employee_info() table ordered by department
-- in ASCENDING and salary DESCENDING
SELECT * 
FROM employee_info
ORDER BY department ASC, salary DESC;
-- NOTE: If we pass 2 columns in order by function
-- the first column passed by order by will be sorted 
-- but we can observe that the 2nd column will be sorted 
-- if the first columns values are repeated 

-- Q.5) FETCH details of all the employees 
-- excluding 'HR' and 'ADMIN'


-- Q.6) Fetch 50 % records of the employee_info table 



-- Q.7)find the employees who's salary is more than the average salary earned by all employees
--  1.) First we will find average salary
SELECT avg(salary) From employee_info;
-- then we will filter the employees based on the above result
-- So the ans is:::::
SELECT * 
FROM employee_info
WHERE salary > 
(SELECT avg(salary) 
FROM employee_info);

-- Q.8) 

