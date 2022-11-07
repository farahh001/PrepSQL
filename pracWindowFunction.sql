Use db_employee;
-- we would like to generate unique order numbers 
--  row_number() --> function generates UNIQUE numbers throughout the rows 
--  The Unique number can also be used for pagination
SELECT row_number() over (order  by CustomerName) as orderNumber,
CustomerName,
ProductName,
Amount,
VendorName
From Sales;
 -- So we are sorting by cutomername and create a unique column
 
 -- partition by()
 -- Now we are generating Unique number as per VendorName
 -- if the order number is Bata give it 1, 2 .. and a new order name starts with 1, 2, ...
 -- when we use partition by with the row-number() it will giev unique numbers within groups 
 SELECT row_number() over (order  by CustomerName) as orderNumber,
 row_number() over (partition by VendorName order by VendorName) as VendorOrderNumber,
CustomerName,
ProductName,
Amount,
VendorName
From Sales;

-- rank()
-- If we want to generate Unique numbers for each customers
-- rank() function will generate the same number for repeated data

 SELECT row_number() over (order  by CustomerName) as orderNumber,
 row_number() over (partition by VendorName order by VendorName) as VendorOrderNumber,
 rank() over (order by CustomerName) as customerOrderNumber,
CustomerName,
ProductName,
Amount,
VendorName
From Sales;

-- dense_rank()
 SELECT row_number() over (order  by CustomerName) as orderNumber,
 row_number() over (partition by VendorName order by VendorName) as VendorOrderNumber,
 dense_rank() over(order by CustomerName) as customerOrderNumber,
CustomerName,
ProductName,
Amount,
VendorName
From Sales;

 