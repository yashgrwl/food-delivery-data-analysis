use db;
drop table if exists goldusers_signup;
CREATE TABLE goldusers_signup(userid integer,gold_signup_date date); 

INSERT INTO goldusers_signup(userid,gold_signup_date) 
 VALUES (1,'2022-12-02'),
(3,'2022-12-12');

drop table if exists users;
CREATE TABLE users(userid integer,signup_date date); 

INSERT INTO users(userid,signup_date) 
 VALUES (1,'2022-12-02'),
(2,'2022-12-03'),
(3,'2022-12-04');

drop table if exists sales;
CREATE TABLE sales(userid integer,created_date date,product_id integer); 

INSERT INTO sales(userid,created_date,product_id) 
 VALUES (1,'2022-12-10',2),
(3,'2022-12-11',1),
(2,'2022-12-11',3),
(1,'2022-12-12',2),
(1,'2022-12-12',3),
(3,'2022-12-14',2),
(1,'2022-12-16',1),
(1,'2022-12-12',3),
(2,'2022-12-16',1),
(1,'2022-12-17',2),
(1,'2022-12-18',1),
(3,'2022-12-19',1),
(3,'2022-12-20',2),
(3,'2022-12-22',2),
(2,'2022-12-23',2),
(2,'2022-12-24',3);


drop table if exists product;
CREATE TABLE product(product_id integer,product_name text,price integer); 

INSERT INTO product(product_id,product_name,price) 
 VALUES
(1,'p1',980),
(2,'p2',870),
(3,'p3',330);


select * from sales;
select * from product;
select * from goldusers_signup;
select * from users;
