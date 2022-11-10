USE db_employee;
create table table1
(id int);
create table table2
(id int);
insert into table1 values (1),(1),(1),(2),(3),(3),(3);
insert into table2 values (1),(1),(2),(2),(4),(null);

-- Inner Join
 -- Matching records
 SELECT *
 From table1 as t1
 Join table2 as t2 
 on t1.id=t2.id;
 -- The output: 8
 
 -- Left Join
 -- Formula= Inner join+ Fetch any additional records from the left table 
				-- which is not present in right table 
                
SELECT *
FROM table1 as t1
LEFT JOIN table2 as t2
ON t1.id=t2.id;
-- Output: 8(matching records From Inner join) +3(additional reocrds that is present in left table)
 
 -- Right JOIN
  -- Formula= Inner join+ Fetch any additional records from the right table 
				-- which is not present in left table 
                
SELECT *
FROM table1 as t1
RIGHT JOIN table2 as t2
ON t1.id=t2.id;

-- Full Join
-- Formula= Inner join+ Fetch any additional records from the left table 
				-- which is not present in right table + Fetch any additional records from the right table 
				-- which is not present in left table 
-- SELECT *
-- FROM table1        t1
-- FULL JOIN table2   t2 on t1.id = t2.id;

-- ABOVE FULL JOin is not working
SELECT *
FROM table1 as t1
LEFT JOIN table2 as t2
ON t1.id=t2.id
UNION
SELECT *
FROM table1 as t1
RIGHT JOIN table2 as t2
ON t1.id=t2.id;

-- CROSS JOIN 
 -- cartesian product 
 -- table1 has 7 records & table2 has 6 records --> 6*7=42 records
 SELECT *
 FROM table1 as t1
 CROSS JOIN table2 as t2 on t1.id=t2.id;
 
 -- NATURAL JOIN
 -- NOT RECOMMENDED
 -- NOTES:::if same column name exists --> we perform INNER Join
  -- NOTES:::if same column name does not exist --> we perform CROSS Join
   -- NOTES:: Natural Join does not have any clause
   
  
 

