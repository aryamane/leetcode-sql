/* Write your T-SQL query statement below */


-- -- solution 1
-- SELECT product_id,
--    SUM(CASE when store='store1' then price end) as store1,
--    SUM(CASE when store='store2' then price end) as store2,
--    SUM(CASE when store='store3' then price end) as store3
-- FROM Products
-- group by product_id




-- -- solution 2
-- select * from
-- (select 
-- product_id, store, price
-- from Products)a
-- pivot
-- (
-- sum(price) for store in ([store1],[store2],[store3])
-- )b
