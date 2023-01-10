USE db_employee;
CREATE TABLE empName(eName varchar(255));
Insert into empName (eName) values ('KING');
Insert into empName (eName) values ('BLAKE');
Insert into empName (eName) values ('CLARK');
Insert into empName (eName) values ('JONES');
Insert into empName (eName) values ('SCOTT');
Insert into empName (eName) values ('FORD');
Insert into empName (eName) values ('SMITH');
Insert into empName (eName) values ('ALLEN');
Insert into empName (eName) values ('WARD');
Insert into empName (eName) values ('MARTIN');
Insert into empName (eName) values ('TURNER');
Insert into empName (eName) values ('ADAMS');
Insert into empName (eName) values ('JAMES');
Insert into empName (eName) values ('MILLER');

-- Q:: Select customers nmae start with 'a'
SELECT * FROM empName WHERE eName LIKE 'a%';

-- Q2::all cusotomers that have 'abc' in any positions
SELECT * FROM empName WHERE eName LIKE '%abc%';
-- Q3::All customers that have 's' in 2nd position
SELECT * FROM empName WHERE eName LIKE '_s%';
-- Q4::All customers that start with 'a' and are at least 4 characters in length
SELECT * FROM empName WHERE eName LIKE 'a___%';
-- Q5::All customers that start with 's' and end with 'a'
SELECT * FROM empName WHERE eName LIKE 's%a';
-- Q6::All customers that do not start with 'a'
SELECT * FROM empName WHERE eName NOT LIKE 'a%';
-- Q7::All customers name with first character is a letter in the range A thru F
SELECT * FROM empName WHERE eName LIKE '[A-F]%';
-- Q8::All customers name containing exactly 5 characters 
SELECT * FROM empName WHERE eName LIKE '_____';
-- Q9::All customers name taht start with 'abc' or 'pqr'
SELECT * FROM empName WHERE eName LIKE 'abc%' or eName LIKE 'pqr%';
-- Q10:: name ending with 'N'
SELECT * FROM empName WHERE eName LIKE '%n';
-- Q11:: Display the employee name who does not contain 'M' anywhere 
SELECT * FROM empName WHERE eName NOT LIKE '%M%';




