drop table if exists products;
create table products (
	product_id serial primary key,
	product_name varchar (100),
	category varchar(50),
	price numeric (10,2),
	quantity int,
	added_date date,
	discount_rate numeric(5,2)
);
insert into products (product_name,category,price,quantity,added_date,discount_rate)
values
		('laptop','electronics',75000.00, 10,'2024-09-23',10.00),
		('pen','accessories',850.00, 15,'2024-08-13',20.04),
		('koolip','tobacco',240.00,10,'2024-07-25',14.05),
		('ciggerate','tobacoo',430.00, 25,'2023-09-14',12.06),
		('headphone','electronics',850.00, 33,'2024-08-15',32.05),
		('lamp','electronics',350.00, 22,'2024-09-05',24.05);

	select * from products;	
--total quantity available using aggregrate afunction 
select sum (quantity) as total_quantity
from products;
--total number of products
select count(*) as total_products
from products;
--count with certain conditons 
select count(*) as total_products
from products
where product_name like '%headphone%';

-- average price of products
select avg(price) as avg_price
from products

--string function 

select*from products;

--get all the categories uppercase
select upper(category) as category_capital
from products;
--get all the cataegories lowecase
select lower(category) as category_lower
from products;
--joins product_name category with hyphen
select concat(product_name,'_',category)
from products;
--extract the first 5 characters from product_name
select substring(product_name,1,5)
from products;
--count lengt
select  product_name, length (product_name)
from products;
--replace 
select replace (product_name,'pen','pencil')
from products;
select distinct product_name
from products;
