.echo on
.headers on


--Rory Millington
--ISTA220 Ex 3

--selet od.orderid, od.productid, od.unitprice, od.quantity, (od.unitprice * od.quantity) as lineitem.
--sum (lineitem) as toat
--from order details od
--order by od.orderid;


(od.lineitem * (1/(select distint od.orderid. (od.unitprice * od.quantity) from ordrer_details)) as total

select od.orderid, 
	   od.productid, 
	   od.unitprice, 
	   od.quantity,
	  (od.unitprice * od.quantity) as linetotal
(select sum (od3.unitprice * od3.quantity) as OrderTotal 
	from order_details od3 where od3.orderid = od.orderid)
	as OrderTotal
 from order details od
 limit 10;
 
 