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