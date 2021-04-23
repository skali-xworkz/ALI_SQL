SELECT * FROM alidatabase.account_details;
create table alidatabase.account_details(
  account_number int not null,
  account_name varchar(45) null,
  branchname_address varchar(45) null,
  account_balance varchar(45) null,
  primary key (account_number));
  
  desc account_details; 


insert into account_details values(12575100,'darshan','jp_nagar',1500);
insert into account_details values(13575101,'sk_ali','white_filed',7500);
insert into account_details values(14575102,'rehaman','richmond_road',9500);
insert into account_details values(18575103,'kavya','kalinga_road',15000);
insert into account_details values(11575104,'nithia','k.r.market_road',5500);
insert into account_details values(16575105,'ranjith','shantinagar',500);


insert into account_details values(16575108,'megha','shantinagar',21500);
insert into account_details values(16575109,'mamatha','kalinga_road',22500);
insert into account_details values(16575110,'appu','white_filed',2500);
insert into account_details values(16575111,'sathosh','white_filed',500);
insert into account_details values(16575112,'sathya','shantrinaga',32500);
insert into account_details values(16575113,null,'shantrinaga',32500);





select * from account_details where account_balance<5000;
select * from account_details where account_balance<5000 and branchname_address='white_filed';
select * from account_details where account_balance<5000 or branchname_address='shantinagar';


select * from account_details where account_balance<5000 and branchname_address is not null;
select * from account_details where account_balance<50000 and account_name is  null;

select * from account_details limit 5;
select * from account_details order by account_balance desc;

update  account_details set account_balance=15000 where account_number='13575101';
update  account_details set account_balance=1500 where account_number='11575104';
update  account_details set account_balance=8500 where account_number='12575100';
update  account_details set account_balance=9500 where account_number='14575102';
update  account_details set account_balance=10000 where account_number='16575108';


select * from account_details where branchname_address between 'shantinagar' and 'white_filed';
select count(account_name) from alidatabase.account_details;
select sum(account_balance) from alidatabase.account_details;
select avg(account_balance) from alidatabase.account_details;

select a.account_number,a.account_name from account_details as a;
select max(account_balance) from alidatabase.account_details;
select min(account_balance) from alidatabase.account_details;

select * from account_details where account_name like '%A';
select * from account_details where account_name like 'm%';
select * from account_details where account_name like '%A%';
select * from account_details where account_name like '_A%';
select * from account_details where account_name like 'S_T%';

delete from account_details where account_number=16575111;
delete from account_details where account_number=16575112;

truncate account_details;
drop database alidatabase;