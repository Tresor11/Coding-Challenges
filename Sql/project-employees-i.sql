-- Challenge
-- https://leetcode.com/problems/project-employees-i/description/

select project.project_id,round(avg(employee.experience_years),2) as average_years  from 
    project left join employee on project.employee_id = employee.employee_id group by
    project.project_id;
