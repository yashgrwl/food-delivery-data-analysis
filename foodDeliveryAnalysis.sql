use db1;
select * from product;
select * from goldusers_signup;
select * from sales;
select * from users; 

# what is total easch customer spend

#select s.userid , sum(p.price) as totalSpend from sales s, product p where p.product_id=s.product_id group by s.userid;

#how may days each customer visited

#select userid , count(distinct created_date) from sales group by userid;

#what is the first product of a customer

#SELECT userid, product_id FROM sales WHERE (userid, created_date) IN ( SELECT userid, MIN(created_date) FROM sales  GROUP BY userid );

# what is the most brought product

# select product_id from sales group by product_id order by count(*) desc limit 1;

# how many times each customer brought most broght product

#select userid ,count(*) from sales where product_id=(select product_id from sales group by product_id order by count(*) desc limit 1) group by userid; 

# which product a customer brought after they become a member

#select s.userid, min(s.created_date) from sales s, goldusers_signup g where s.userid=g.userid and s.created_date>=g.gold_signup_date  group by s.userid; 

#select userid, product_id from sales where (userid,created_date) in (select s.userid, min(s.created_date) from sales s, goldusers_signup g where s.userid=g.userid and s.created_date>=g.gold_signup_date  group by s.userid ) ; 

# what was broght before becoming gold member
#select userid, product_id from sales where (userid,created_date) in (select s.userid, max(s.created_date) from sales s, goldusers_signup g where s.userid=g.userid and s.created_date<g.gold_signup_date  group by s.userid ) ; 

# what are the total orders and money spent by customer after becoming member

#select s.userid,count(*), sum(p.price) from sales s, goldusers_signup g, product p where s.product_id=p.product_id and s.userid=g.userid and s.created_date>=g.gold_signup_date  group by s.userid  ; 


# if product 1 gives 1 point , product 2 =2 points , product 3 gives 3 points , how many points each customer got till now 

#select userid , sum(if(product_id=1,1,if(product_id=2,2,if(product_id=3,3,0)))) as points from sales group by userid;

# calculate which user gets most points

#select userid , sum(if(product_id=1,1,if(product_id=2,2,if(product_id=3,3,0)))) as points from sales group by userid order by points desc limit 1;

# give total amount spend by each non gold member user

#select s.userid, sum(p.price) from sales s, product p where p.product_id=s.product_id and s.userid not in (select userid from goldusers_signup) group by s.userid;