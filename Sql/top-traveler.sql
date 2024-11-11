# Write your MySQL query statement below
select distinct users.name, ifnull(sum(rides.distance),0) as travelled_distance  from users left join rides on users.id = rides.user_id group by users.id order by travelled_distance desc, name; 