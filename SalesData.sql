create database SalesDB;
use SalesDB;

create table Sales(
OrderID int primary key,
OrderDate date,
CustomerName varchar(50),
Region varchar(20),
Category varchar(30),
ProductName varchar(50),
Quantity int,
UnitPrice decimal(10,2),
TotalAmount decimal(12,2));

desc Sales;
show tables;
select * from Sales;
select count(*) as TotalRows from Sales;

select sum(TotalAmount) as TotalSales 
from Sales;

select count(*) as TotalOrders 
from Sales;

select Region,sum(TotalAmount) as Sales_Amount_by_Region 
from Sales 
group by Region;

select Category,sum(TotalAmount) as Sales_Amount_by_Category 
from Sales 
group by Category;

select ProductName,sum(Quantity) as Quantity_Sold 
from Sales 
group by ProductName 
order by Quantity_Sold 
desc;

select ProductName,sum(Quantity) as Quantity_Sold 
from Sales 
group by ProductName 
order by Quantity_Sold 
desc limit 5 ;

select OrderDate as Month_No,sum(TotalAmount) as Sales 
from Sales
group by Month_No
order by Month_No;

select CustomerName,sum(TotalAmount) as Sales 
from Sales
group by CustomerName
order by Sales 
desc;

select CustomerName,sum(TotalAmount) as Sales 
from Sales
group by CustomerName
order by Sales 
desc limit 5;









