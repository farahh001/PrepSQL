USE db_employee;
CREATE TABLE `employee_info` (
  `id` int(11) NOT NULL,
  `name` varchar(265) NOT NULL,
  `email` varchar(265) NOT NULL,
  `department` varchar(265) NOT NULL,
  `salary` int(11) NOT NULL,
  `DOB` date NOT NULL,
  `gender` varchar(265) NOT NULL
);

INSERT INTO `employee_info` (`id`, `name`, `email`, `department`, `salary`, `DOB`, `gender`) VALUES
(1, 'Karan Mehta', 'Karan@gmail.com', 'HR', 300000, '1998-05-10', 'M'),
(2, 'Rohit Sharma', 'Rohit@gmail.com', 'Admin', 75000, '1997-01-25', 'M'),
(3, 'Ankush Rajput', 'Ankush@gmail.com', 'Accounts', 60000, '1998-02-09', 'M'),
(4, 'Priyanshi Sharma', 'Priyanshi@gmail.com', 'HR', 500000, '1998-06-15', 'F'),
(5, 'Sanket Gupta', 'Sanket@gmail.com', 'Developer', 100000, '1997-05-07', 'M'),
(6, 'Shruti Kapoor', 'Shruti@gmailcom', 'Admin', 80000, '1995-11-26', 'F'),
(7, 'Rohit Sharma', 'Rohit@gmail.com', 'Admin', 75000, '1997-01-25', 'M'),
(8, 'Sanket Gupta', 'Sanket@gmail.com', 'Developer', 100000, '1997-05-07', 'M'),
(9, 'Geet Gour', 'Geet@gmail.com', 'Tester', 17000, '1998-07-03', 'F');

ALTER TABLE `employee_info`
  ADD PRIMARY KEY (`id`);