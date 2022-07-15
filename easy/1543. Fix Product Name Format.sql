/* Write your T-SQL query statement below */



select lower(trim(product_name)) as product_name,format(sale_date,'yyyy-MM') as sale_date,count(1) as total
from Sales 
group by lower(trim(product_name)),format(sale_date,'yyyy-MM')
order by lower(trim(product_name)),format(sale_date,'yyyy-MM')
