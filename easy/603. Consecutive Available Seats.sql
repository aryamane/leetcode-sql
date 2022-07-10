/* Write your T-SQL query statement below */


-- with cte as(
-- select seat_id, free as present
-- ,lead(free) over(order by seat_id) as next
-- ,lag(free) over(order by seat_id) as previous
-- from Cinema)

-- select seat_id
-- from cte
-- where (present = 1 and next = 1) or (present = 1 and previous =1)

-- select seat_id
-- from
-- (
-- select seat_id, free as present
-- ,lead(free) over(order by seat_id) as next
-- ,lag(free) over(order by seat_id) as previous
-- from Cinema
--     )a
--  where (present = 1 and next = 1) or (present = 1 and previous =1)   
