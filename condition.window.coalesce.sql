/* expensive if the price is grater than or equal to 50000
moderate if the price is less than or equal to 500
affordable if the price is less than 500
*/
select * from products;

select distinct product_name,price,
	case
	when price >=50000 then 'expensive'
	when price >=500 then 'moderate'
	else 'affordable'
	end as price_category

	from products;

--colaesce function
alter table products
add column discount_price  numeric (10,2);

update products
set discount_price = price*0.9
where product_name not in ('laptop','pen');
select product_name,
	coalesce (discount_price,price) as final_price
from products;
select distinct product_name
from products;

select  distinct product_name,category, price,
	ROW_NUMBER()over(partition by category order by price asc)as row_num
from products;

select distinct product_name,category,price,
	dense_rank() over (partition by category order by price asc) as ranking 
from products;