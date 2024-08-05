CREATE DATABASE bank_account_appln;
CREATE TABLE bank_account(id int,bank_name varchar(20), barnch_name varchar(20),ifsc_code varchar(20),account_no bigint);
SELECT * FROM bank_account;
/*alter table table_name add column column_name datatype;*/
ALTER TABLE bank_account ADD COLUMN address varchar(20),ADD COLUMN account_type varchar(20),ADD COLUMN account_holdername varchar(20),ADD COLUMN contact_no bigint,ADD COLUMN email varchar(20);
/*syntax: ALTER TABLE table_name DROP column_name;*/
ALTER TABLE bank_account DROP COLUMN email,DROP COLUMN contact_no;
/*syntax:ALTER TABLE table_name RENAME COLUMN exixting_column TO new_column_name;*/
ALTER TABLE bank_account RENAME COLUMN id TO b_id,RENAME COLUMN address TO account_holderadd;
/*syntax- ALTER TABLE table_name MODIFY COLUMN column_name datatype;*/
DESC bank_account;
ALTER TABLE bank_account MODIFY COLUMN account_holderadd boolean,MODIFY COLUMN b_id bigint;

/*BATCH INSERT: we insert multiple values at a time INSERT INTO table_name values(),(),(),();*/
INSERT INTO bank_account VALUES 
(1,'SBI','Hassan Circle','DSA32124231SA4',12323432342343214,true,'Savings account','Sangeetha'),
(2,'Karnataka Bank','Kb cross','SAW32S44342352',123423241325432,false,'Current account','Sathvik'),
(3,'Axis Bank','Kodi Circle','SREA2312423453',13233453245364,true,'Business Account','Divya'),
(4,'SBI','Kuvempu Nagar','KUM13232454321HD',1232321456789879,true,'Business Account','Daisy'),
(5,'Canara Bank','Pi hotel Circle','CNA32142323Df',12323143245422,true,'Savings Account','Priya'),
(6,'SBM','Hassan Circle','HAS1232242Gf',1324324543245242,false,'Savings Account','Sangu'),
(7,'Syndicate Bank','Rajajinagar','SADE32123311A',123224315424361,true,'Business Account','Niveditha'),
(8,'Corporation Bank','Shivkumar Circle','TUMK1232436D',12324324314323412,true,'Saving Account','Rama'),
(9,'Syndicate Bank','Vijaynagar','VIJ12324SNA544',1232543245324564,false,'Current Account','Baba'),
(10,'Canara Bank','Yashvanthpur','YASH3421424SF554',1322432432435641,false,'Business Account','Nicy');

SELECT * FROM bakery;
CREATE TABLE bakery(id int,b_name varchar(20),b_ownername varchar(20),b_manegername varchar(20),b_empname varchar(20));
ALTER TABLE bakery ADD COLUMN b_manager_sal bigint,ADD COLUMN b_empsal bigint,ADD COLUMN sec_owner varchar(20),ADD COLUMN b_place varchar(20),ADD COLUMN b_items varchar(20);
ALTER TABLE bakery DROP COLUMN sec_owner,DROP COLUMN b_empsal;
ALTER TABLE bakery RENAME COLUMN id TO b_id,RENAME COLUMN b_empname TO workers;
DESC bakery;
ALTER TABLE bakery MODIFY COLUMN workers int,MODIFY COLUMN b_manager_sal double(8,2);

INSERT INTO bakery VALUES(1,'Sh bakery','Sai','Prakash',10,50000.00,'Tiptur','Toast'),
(2,'Annapurna Bakery','Ananya','Raama',28,1500.00,'Tiptur','Samosa'),
(3,'Malnads Bakery','baba','Raj',12,2000.98,'Tiptur','Alu Bun'),
(4,'Shivu Bakery','Shivu','Shiv',24,5473.98,'Tumkur','Chocolate Cake'),
(5,'Veg Bakery','Sathvi','Sathvik',12,2342.87,'Tiptur','Pastry');