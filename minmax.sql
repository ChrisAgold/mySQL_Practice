use employees;
select * from salaries;
select date_format(from_date, '%Y') from salaries;
select date_format(from_date, '%Y') as salary_year, min(salary) from salaries group by salary_year;
select date_format(from_date, '%Y') as salary_year, max(salary) from salaries group by salary_year;
select date_format(from_date, '%Y') as salary_year, max(salary) as max_salary, min(salary) as min_salary from salaries group by salary_year;

