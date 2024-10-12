-- Problem:
-- https://leetcode.com/problems/employee-bonus/description/

select employee.name, bonus.bonus from employee
 left join bonus on employee.empId = bonus.empId
  where ifnull(bonus.bonus,0) < 1000;
