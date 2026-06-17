select * from products;
--get current date and time 
select now() as current_datetime;

-- get current date 
select current_date as today_date;

select added_date, (current_date - added_date) as days_different
from products;

--extract parts of date
--extract the year, month,day from the added_date column

select product_name,
		extract(year from added_date),
		extract(month from  added_date),
		extract(day from  added_date)
from products;

--calculate age between dates 
select product_name,
		age(current_date,added_date)
from products;
--format date as strings 
--format date in a custom fromat (dd_month_yyyy)
select product_name,
		to_char(added_date,'dd-month-yyyy')
from products;
--get specifiec date part
--extract the day of the week from added_date
select product_name,added_date,
	date_part('month',added_date)
from products;

--truncate date to precision 
--truncate added_date to the start of the month 
select product_name,
	date_trunc('month',added_date) as month
from products;