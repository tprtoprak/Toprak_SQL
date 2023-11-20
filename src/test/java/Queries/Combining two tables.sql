--Creating two table including 'adress_id' is same for both table
CREATE TABLE TOPRAK_CUSTOMER(
c_id Integer PRIMARY KEY,
first_name varchar(30),
last_name varchar(30),
adress_id Integer
);

CREATE TABLE TOPRAK_ADDRESS(
    adress_id INTEGER,
    adress varchar(30),
    phone INTEGER
);

--Inserting data for both table
insert into TOPRAK_CUSTOMER values (1,'Mary','Smith',5);
insert into TOPRAK_CUSTOMER values (2,'Patricia','Johnson','');
insert into TOPRAK_CUSTOMER values (3,'Linda','Williams',7);
insert into TOPRAK_CUSTOMER values (4,'Barbara','Jones',8);
insert into TOPRAK_CUSTOMER values (5,'Elizabeth','Brown','');
insert into TOPRAK_CUSTOMER values (6,'Emma','Mike',6);

insert into TOPRAK_ADDRESS values (5,'1913 Hanoi Way',28303384);
insert into TOPRAK_ADDRESS values (7,'692 Joliet Street',44847719);
insert into TOPRAK_ADDRESS values (8,'1566 Inegl Manor',70581400);
insert into TOPRAK_ADDRESS values (10,'1795 Santiago',86045262);
insert into TOPRAK_ADDRESS values (11,'900 Santiago',16571220);

--Displaying tables
SELECT * FROM TOPRAK_CUSTOMER
order by first_name asc,last_name desc ;
SELECT * FROM TOPRAK_ADDRESS;

--Combining two tables in one table
select x.adress_id,first_name,last_name,adress,phone from TOPRAK_CUSTOMER x join TOPRAK_ADDRESS y
    on x.adress_id = y.adress_id;

--Combining two tables in one table with all data of left side table
select x.adress_id,first_name,last_name,adress,phone from TOPRAK_CUSTOMER x left join TOPRAK_ADDRESS y
    on x.adress_id = y.adress_id;

--Combining two tables in one table with all data of right side table
select x.adress_id,first_name,last_name,adress,phone from TOPRAK_CUSTOMER x right join TOPRAK_ADDRESS y
    on x.adress_id = y.adress_id;

--Combining two tables in one table with all data of both side table
select x.adress_id,first_name,last_name,adress,phone from TOPRAK_CUSTOMER x full join TOPRAK_ADDRESS y
    on x.adress_id = y.adress_id;

--Creating new table that adress_id is null or a number which doesn't include right table
select x.adress_id,first_name,last_name,adress,phone from TOPRAK_CUSTOMER x left join TOPRAK_ADDRESS y
    on x.adress_id = y.adress_id where y.adress_id is null;

--A U B / C
select x.adress_id,first_name,last_name,adress,phone from TOPRAK_CUSTOMER x full join TOPRAK_ADDRESS y
    on x.adress_id = y.adress_id where x.adress_id is NULL;


