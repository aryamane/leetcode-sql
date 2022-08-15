/* Write your T-SQL query statement below */


-- solution 1
select seller_name
from Seller where seller_id not in(
select distinct s.seller_id
from Orders o 
inner join Seller s on o.seller_id = s.seller_id
where year(sale_date)='2020')
order by seller_name

-- solution 2
select s.seller_name
from Seller s
left join Orders o on s.seller_id = o.seller_id
and year(sale_date)='2020' 
where o.seller_id is null
order by s.seller_name
