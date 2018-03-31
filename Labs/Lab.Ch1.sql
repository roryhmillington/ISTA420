.echo on

.headers on



-- Name: Tsql_LAB_2.sql

-- Author: Rory H Millington

-- Date: February 22, 2018



create table family (
	id interger,
	name text,
	sex interger,
	role text,
	age interger
	);

insert into family values (1,'Rory',1,'dad',42);
insert into family values (2,'Donavon',1,'son',16);
insert into family values (3,'Grant',1,'son',12);
.schema family
CREATE TABLE family (
	id interger,
	name text,
	sex interger,
	role text,
	age interger
	);

select * from family;
id|name|sex|role|age
1|Rory|1|dad|42
2|Donavon|1|son|16
3|Grant|1|son|12
select * from family where sex = 1;
id|name|sex|role|age
1|Rory|1|Human|42
2|Donavon|1|son|16
3|Grant|1|son|12
select * from family where role like 'dad';
id|name|sex|role|age
2|Rory|0|dad|42
select name from family;
name
Rory
Donavon
Grant
select avg(age) from family;
avg(age)
23.3333333
select sum(age) from family;
sum(age)
70
.exit
