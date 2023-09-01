select 
    "Marital Status" ,
    round(avg(age),2) as average_age
from
    customer c
where "Marital Status" != ''
group by
    "Marital Status" ;

select
    gender,
    round(avg(age),2) AS average_age
from
    customer
group by
    gender;
   
select s.storename, sum(t.qty) as total_qty
from store s
join transaction t
on s.storeid = t.storeid 
group by s.storename 
order by total_qty desc
limit 1;

select 
	p."Product Name" ,
	sum(t.totalamount) as total_sales_amount
from
	product p
join transaction t
on p.productid = t.productid 
group by p."Product Name"
order by total_sales_amount desc
limit 1;