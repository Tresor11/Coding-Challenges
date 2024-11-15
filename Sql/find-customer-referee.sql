-- Problem link
-- https://leetcode.com/problems/find-customer-referee/description/

select name from Customer where not referee_id = 2 or referee_id is null;
