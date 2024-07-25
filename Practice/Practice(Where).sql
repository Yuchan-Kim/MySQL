#Where clause Practice

select 
	concat(first_name, "   ", last_name) 이름,
	salary 월급
from employees 
where salary > 15000;

select 
	concat(first_name, "   ", last_name) 이름,
    hire_date 입사일
from employees
where hire_date > '07/01/01';

select 
	concat(first_name, "   ", last_name) 이름,
    salary 월급
from employees
where first_name = 'Lex' or first_name = 'steven';

select 
	first_name,salary
from employees
where salary <= 14000 or salary >= 17000;

select
	first_name,salary
from employees
where salary between 14000 and 17000;
	

select 
	concat(first_name, "   ", last_name) 이름,
    salary 월급
from employees
where first_name = binary 'Lex' ; 

select
	first_name, last_name, salary
from employees
where salary = 2100 or salary = 3100 or salary =4100 or salary =5100 ;




