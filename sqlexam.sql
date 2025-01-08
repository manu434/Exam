create database sqlexam
use sqlexam

create table table1(itemno int,iname varchar(20),price bigint,qty bigint)
insert into table1 values(12,'pen',10,17)
insert into table1 values(13,'eraser',5,15)
insert into table1 values(14,'notebook',15,20)

select * from table1

--1)
insert into table1 values(15,'pencil',20,10)
select * from table1

--2)
select * from table1 where qty>10

--3)
update table1 set itemno=25 where itemno=13
select * from table1

--4)
select  iname,qty,price,(qty * price) AS TotalAmount from table1

--5)
select iname from table1 where price=10

--6)
select * from table1 order by price asc

--7)
--itemno wil be the primary key becase the value is unique

--8)
--iname can be defined with dataype varchar(20)

--9)
update table1 SET Price = Price + 2
select * from table1

--10)
update table1 set price = price - 2 where price<20
select * from table1

--11)
--a) select
--b) order by

--12)
select count(*) from table1

--13)
alter table table1 add address varchar(20)
select * from table1

--14)
create procedure table1procedure
as begin
select * from table1
select * from table1 where itemno=14
end 
go

exec table1procedure

--15)
create view table1view as select iname,price from table1
select * from table1view




