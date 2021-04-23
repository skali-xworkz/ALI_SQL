create database alidatabase;
use alidatabase;
create table alidatabase.banks (
bank_id int not null,
bank_name varchar(45) null,
branchaddress_address varchar(45) null,
primary key (idbanks));

SELECT * FROM alidatabase.banks;
alter table alidatabase.banks Change column `branchaddress_address` `branchname_address` varchar(45) null;

insert into banks values(51,'hdfc_bank','jp_nagar');
insert into banks values(52,'yes_bank','white_filed');
insert into banks values(53,'karnataka_bank','Richmond_road');
insert into banks values(54,'canara_bank','Kalinga_road');
insert into banks values(55,'india_bank','K.R.market_Road');
insert into banks values(56,'sbi_bank','shantinagar');

truncate banks;
drop database alidatabase;