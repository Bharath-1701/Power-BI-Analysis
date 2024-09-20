	## Show all customer records
select * from customers;
	## Show total number of customers
select count(*) from customers;
	## Show transactions for Chennai market (market code for chennai is Mark001
select * from transactions
where market_code = 'Mark001';
	## Show transactions where currency is US dollars
select * from transactions
where currency = "USD";
	##Show transactions in 2020 join by date table
select * from date;
select * from transactions;
select 	transactions.*, date_table.*
from transactions 
inner join date as date_table
on	transactions.order_date = date_table.date
where date_table.year = 2020;

	##Show total revenue in year 2020, January Month,
select 
sum(t.sales_amount)'Revenue', d.year,d.month_name
from transactions as t
inner join date as d on t.order_date = d.date
where d.year = 2020 and d.month_name = "January"; 

    ##Show total revenue in year 2020 in Chennai

select * from transactions;

select 
sum(sales_amount)'Revenue', m.markets_name,d.year
from transactions as t
inner join date as d on t.order_date = d.date
join markets as m on t.market_code = m.markets_code
where d.year = 2020 and m.markets_name = "Chennai";

select * from customers;

select * from customers
where custmer_name like 'A%';

select * from products;

select * from products
where product_code like 'Prod_%';

select * from markets;

select * from markets
where zone = 'South';

select * from markets;
select * from transactions;

select markets_name, market_code, sum(sales_amount) as TotalSales
from transactions as t
inner join markets as m on t.market_code = m.markets_code
group by m.markets_code
having sum(sales_amount) > 500000;


SELECT c.custmer_name, c.customer_code, SUM(t.sales_amount) AS TotalSales
FROM transactions AS t
INNER JOIN customers AS c ON t.customer_code = c.customer_code
WHERE c.custmer_name LIKE 'A%'
GROUP BY c.customer_code;








select * from markets
where zone not like '%th' and zone <> "";




