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
