#Problem 01
select 
	concat(first_name, " ", last_name) as 이름,
    salary 월급,
    phone_number 전화번호,
    hire_date 입사일
from employees
order by hire_date asc, first_name asc; 

#Problem 02
select
	job_title,
    max_salary
from jobs order by max_salary desc; 

#Problem 03
select
	concat(first_name," ",last_name),
    manager_id,commission_pct,salary
from employees
where manager_id is not null && commission_pct is null && salary > 3000
order by salary desc; 

#Problem 04
select 
	job_title, max_salary
from jobs 
where max_salary >= 10000
order by max_salary desc;

#Problem 05
select 
	first_name,salary, ifnull(commission_pct,0)
from employees
where salary < 14000 and salary >= 10000; 

#Problem 06
select
	first_name, salary, date_format(hire_date, '%Y-%m'), department_id
from employees
where department_id in (10,90,100);

#Problem 07
select
	first_name, salary
from employees
where first_name like '%s%';

#Problem 08
select
	department_name
from departments
order by char_length(department_name) desc;

#Problem 09
select 
	ucase(country_name)
from countries
order by country_name asc;

#Problem 10 
select 
	first_name,salary,replace(phone_number,'.','-') as hp,date_format(hire_date, '%m/%d/%y') as hire_date
from employees
