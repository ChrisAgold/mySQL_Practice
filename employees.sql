use employees;
SELECT emp_no,
       count(*) as emp_count
FROM employees
WHERE emp_no > 1
GROUP BY emp_no
HAVING emp_count > 0
ORDER BY emp_no
LIMIT 5,10;

use employees;
SELECT first_name,
       last_name,
       concat(first_name, ' | ', last_name) as 'Name'
from employees;

use employees;
SELECT salary,
       salary * .01         as weekly,
       salary * .01 * 4     as monthly,
       salary * .01 * 52    as yearly,
       salary + 200 * .01   as multiply_first,
       (salary + 200) * .01 as add_first,
       salary * .01 / 7     as daily,
       salary DIV 3         as div_op,
       salary % 3           as mod_op
from salaries;


use employees;
select * from salaries;

use employees;
SELECT right('asdf', 1);

use employees;
SELECT first_name, last_name, LEFT(first_name, 1), LEFT(last_name, 1) from employees;

use employees;
SELECT * FROM employees WHERE first_name = 'Elvis' and gender = 'M';
SELECT count(*) FROM employees WHERE first_name = 'Elvis';

use employees;
SELECT * FROM employees;
SELECT * FROM employees WHERE first_name = 'Elvis';
SELECT * FROM employees WHERE first_name IN ('Elvis');
SELECT count(*) FROM employees WHERE first_name IN ('Elvis', 'Sumant', 'Berni', 'Lillian') AND last_name NOT IN ('Maliniak', 'Sluis', 'Bouloucos', 'Warwick');

SELECT * FROM salaries;
SELECT count(*) FROM salaries;
SELECT * FROM salaries WHERE salary > 66961;
SELECT count(*) FROM salaries WHERE salary < 66961;
SELECT count(*) FROM salaries WHERE salary > 66961 and from_date > '1989-06-25';

SELECT * from employees;
select * from employees where first_name > 'sammy';

select * from employees;
select * from employees where first_name like 'E%';
select * from employees where first_name like 'E%' and last_name like '_e%';

use employees;
select * from salaries;
select * from salaries WHERE salary > 66074 and salary < 71046;
select count(*) from salaries WHERE salary >= 66074 and salary <= 71046;
select count(*) from salaries WHERE salary between 66074 and 71046;

SELECT * from employees;
SELECT * from employees where birth_date between '1954-05-01' and '1956-04-20';
SELECT count(*) from employees where birth_date between '1954-05-01' and '1956-04-20';



