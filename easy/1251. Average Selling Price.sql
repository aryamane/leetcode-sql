select p.product_id,
round((sum(units*price)*1.0 / sum(units)),2) as average_price
from Prices p 
inner join UnitsSold u on p.product_id = u.product_id
where u.purchase_date  between p.start_date and p.end_date
group by p.product_id
