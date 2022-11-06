SELECT * FROM db_employee.employee_info;

-- Find duplicate records 
SELECT *, COUNT(name)
FROM employee_info
group by name
HAVING COUNT(name)>1;

-- *** Delete Duplicate records From the table 
-- We are gonna use self join where we compare 1 table to another 

DELETE E1
FROM employee_info E1, employee_info E2
where E1.email = E2.email
and E1.id>E2.id;
