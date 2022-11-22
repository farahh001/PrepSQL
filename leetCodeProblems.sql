use db_employee;
-- LEETCODE Q1-EASY
-- Combine 2 tables 
-- https://leetcode.com/problems/combine-two-tables/

SELECT P.lastName,P.firstName,A.city, A.state 
FROM Person P
LEFT JOIN Address A
ON p.personId=A.personId;


-- LEETCODE Q2-EASY
-- Employees Earning More than their managers
--  https://leetcode.com/problems/employees-earning-more-than-their-managers/
SELECT E1.name as Employee
FROM Employee E1
LEFT JOIN Employee E2
ON E1.managerId=E2.id
WHERE E1.salary > E2.salary;
-- LEETCODE Q3-EASY
-- Duplicate Emails 
-- https://leetcode.com/problems/duplicate-emails/
SELECT email AS Email
FROM Person 
GROUP BY email
HAVING COUNT(email)>1;

-- ANOTHER WAY 
SELECT email AS Email
FROM Person 
GROUP BY email
HAVING COUNT(DISTINCT id)>1;
-- LEETCODE Q4-EASY
-- LEETCODE Q5-EASY
-- LEETCODE Q6-EASY
-- LEETCODE Q7-EASY
-- LEETCODE Q1-EASY
-- LEETCODE Q1-EASY
-- LEETCODE Q1-EASY
-- LEETCODE Q1-EASY