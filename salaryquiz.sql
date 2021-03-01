use employees;

select *
from salaries;

select *
from dept_manager;

select distinct emp_no
from dept_manager;

select *
from salaries
where emp_no NOT IN (select distinct emp_no from dept_manager);

SELECT date_format(from_date, '%Y') as salary_year,
       sum(salary)                  as total_salary,
       max(salary)                  as max_salary,
       min(salary)                  as min_salary,
       avg(salary)                  as avg_salary
FROM salaries
WHERE emp_no NOT IN (SELECT DISTINCT emp_no
                     FROM dept_manager)
GROUP BY salary_year;
