---- 10 queries

select * from sales

select order_id,ship_mode from sales where ship_mode ~*'^First Class'

select customer_id,segment,city,state from customer
where segment ~*'^corporate' and city ~*'Dover'

select * from product where product_id ~ 'OFF\-LA';

select * from product where product_id ~ 'FUR\-TA';

select customer_id, age from customer where age::varchar ~'^[0-9](2|4|6)$'

select product_id, sales::varchar from sales 
	where sales::varchar ~'^[0-9][2-8](1|5|8).[0-9]{3}$'

select product_id, sales::varchar from sales
 where sales::varchar ~'^[0-9][2-8](1|5|8).[0-9][2-9]$'

select order_id from sales where order_id ~'^CA-201(4|7)-[0-9]{6}$'

select 	order_id from sales where order_id ~'^CA-201(4|7)-[0-9]{4}[3-8](5|9)$'

select order_date from sales where order_date::varchar ~*'^201[4|6]-[0-6]{2}-0(2|4|9)$'

select order_id,ship_mode,customer_id,product_id from sales
where ship_mode ~*'^Second Class' and customer_id ~*'^CG-12520$'

select order_line,order_id from sales where order_id ~* '^US'

select order_line,customer_id from sales 
where customer_id ~*'^[a-h]{2}-[0-5]{4}(5|3)$'

select order_id,ship_date from sales
where ship_date::varchar ~*'^201(5|7)-[0-4]{2}-1(6|4|2)$'