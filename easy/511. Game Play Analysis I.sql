/* Write your T-SQL query statement below */


-- with cte1 as (
-- select player_id,event_date as first_login, row_number() over(partition by player_id order by event_date asc) rn
-- from Activity
-- )

-- select player_id, first_login
-- from cte1
-- where rn=1


-- select player_id,min(event_date) as first_login
-- from Activity
-- group by player_id
-- order by player_id

-- select  distinct player_id, first_value(event_date) over(partition by player_id order by event_date) first_login from Activity;
