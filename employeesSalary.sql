Use db_employee;


Create table Employees(
 ID int primary key ,
 FirstName varchar(50),
 LastName varchar(50),
 DepartmentName varchar(50),
 Salary int
);
Insert into Employees values (1, 'Guy', 'Gilbert', 'Production', 60000);
Insert into Employees values (2, 'Kevin', 'Brown', 'Marketing', 66000);
Insert into Employees values (3, 'Roberto', 'Tomburello', 'Engineering', 72000);
Insert into Employees values (4, 'Rob', 'Walters', 'ToolDesign', 51000);
Insert into Employees values (5, 'Rob', 'Walters', 'ToolDesign', 85000);
Insert into Employees values (6, 'Thiery', 'D"hers', 'ToolDesign', 72000);
Insert into Employees values (7,'David', 'Bradley', 'Marketing', 85000);
Insert into Employees values (8, 'David', 'Bradley', 'Marketing', 60000);
Insert into Employees values (9, 'JoLynn', 'Dobney', 'Production', 60000);
Insert into Employees values (10, 'Ruth', 'Ellerbrock', 'Production', 66000);
Insert into Employees values (11, 'Gail', 'Erickson', 'Engineering', 51000);
Create table Sales(
 ID int primary key ,
 CustomerName varchar(50),
 ProductName varchar(50),
 Amount float,
 VendorName varchar(50)
);
Insert into Sales values (1, 'Shiv', 'Shoes', 100.24, 'Bata');
Insert into Sales values (2, 'Raju', 'Bag', 203.45, 'Bata');
Insert into Sales values (3, 'Sukesh', 'Perfume', 102.00, 'Archies');
Insert into Sales values (4, 'Rajendra', 'Books', 119.00, 'Archies');
Insert into Sales values (5, 'Rajendra', 'Pens', 302.00, 'Archies');





Insert into Sales values (4, 'Rajendra', 'Books', 119.00, 'Archies');
Insert into Sales values (5, 'Rajendra', 'Pens', 302.00, 'Archies');

Create table Emp_prac(
 EmpId int primary key ,
 EmpName varchar(50),
 ManagerId int,
 DeptId int,
 Salary int
);
Insert into Emp_prac values (1, 'Sachin', 3, 1, 6000);
Insert into Emp_prac values (2, 'Rahul', 3, 1, 7000);
Insert into Emp_prac values (3, 'Saurav', 5, 1, 10000);
Insert into Emp_prac values (4, 'Kapil', 5, 1, 8000);
Insert into Emp_prac values (5, 'Gavaskar', 0, 1, 9000);
Insert into Emp_prac values (6, 'Mohit', 7, 2, 6000);
Insert into Emp_prac values (7, 'Paras', 0, 2, 8000);
Insert into Emp_prac values (8, 'Saurav', 5, 1, 10000);

Create table tb_department(
DeptId int primary key,
 DeptName varchar(50)
);

Insert into tb_department values (1, 'IT');
Insert into tb_department values (2, 'Admin');