.echo on
.headers on

--	Name: Chapter 4 Labs

--  Author : Rory Millington

--  Date: Marrch 6

--	1. What is the order number and the date of each order sold by each emplyee?
	
	.tables
	.schema order details
	.schema orders
	.schema employees
	create table employees
	sqlite3 nw location	
	
select  e.lastname, e.firstname, e.employeeid, nameo.employeeid, o.orderdate, o.orderid
from orders  0 join employees e on e.employeeid = o.employeeid
order by e.lastname. e.firstname, o.orderdate, o.orderid 

--	2. List each territory by region.
	
	.schema territories
	Create region table
	Create table territories
	
select t.territorydescription, t.regionid, r.regionid, r.regiondescription
from region r join territories to on r.regionid = t.regionid
order by r.regiondescription, t.terrritorydescription;
	
--	3.What is the supplier name for each product alphabetically by supplier
	
	.tables
	.schema products
	.schema suppliers
	
select s.companyname, p.productname, p.productid
from suppliers s join products p on s.supplierid = p.supplierid
order by s.companyname, p.productname 
	
--  4.For every order on may 5, 1998, how many of each item was ordered, and what was the price of the item?

	.schema order_details
	.schema orders
	
select o.orderid, o.orderdate, od.orderid, od.productid, od.unitprice, od.quanity
from orders o join order_details od on o.orderid = od.orderid
where o.orderdate = '1998-05-05';

-- 5. For every order on May 5, 1998, how many of each item is ordered giving the name of the  item.

	.schema products
	.schema order_details
	
select o.orderid, o.orderdate, od.orderid, od.unitprice, od.quanity
od.productid, p.productid, p.productname
from
	orders o 
		join order_details od on o.orderid = od.orderid
		join products p on p.productid = od.productid
where o.orderdate = '1998-05-05'
order by o.orderdate, o.orderid, od.productid


--	6. For every order 

	.tables
	.schema customersc
	.schmea orders
	create table orders 
	
select o.orderid, o,orderdate, o.customerid, o.shipperid, 
c.compayname, s.shippername as 'company name', s.companyname as 'shippers name'
from orders o
join customers c on c.customerid = o.customerid
joim shippers s on s.shipperid = o.shipperid
where o.orderdate like '1998-05-%';

-- 7. What is the costumers mame and the employyess name and every region shipped to france?

	.schema order_details
	.schema orders
	
select o.orderid, o.customerid, o.employeeid, o.shippcountry,
e.firstname || ' ' || e.lastname as e.EmployeeName c.companyname as CustomerName
from orders o 
join employees e on e.employeeid = o.employeeid
join customers c on co.custumerid = o.customerid
where o.shipcountry like 'Fr%';

--8. list the products by name the were shipped to Germany

 






	
	
	
	
	
	




	

	
