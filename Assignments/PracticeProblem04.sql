#Problem 01
select 
	count(salary)
    from employees
    where salary < (select avg(salary) from employees);
    
#Problem 02
select
	e.employee_id,
    e.first_name,
    e.salary,
    round(m.salary,0),
    m.maxSal
    from employees e, (select avg(salary) as salary, max(salary) as maxSal from employees) as m
    where e.salary >= m.salary and e.salary < m.maxSal
    order by m.maxSal asc;
    
#Problem 03 
select 
	l.location_id,
    l.street_address,
    l.postal_code,
    l.city,
    l.state_province,
    l.country_id
    from locations l, 
		(select location_id, department_id from departments) as d,
		(select department_id, first_name, last_name from employees) as e
    where e.first_name = 'Steven' and e.last_name = 'king' 
		and e.department_id = d.department_id and d.location_id = l.location_id;

#Problem 04
select
	employee_id,
    first_name,
    last_name,
    salary
    from employees
    where salary < any (select salary from employees where job_id = 'ST_MAN');

#Problem 05
#테이블 조인
select
	e.employee_id,
    e.first_name,
    e.salary,
    e.department_id
    from employees e, (select  department_id,max(salary) as salary from employees group by department_id) as f
    where e.salary = f.salary and e.department_id = f.department_id;

#조건절 비교
select 
	e.employee_id,
    e.first_name,
    e.salary,
    e.department_id
    from employees e
    where (e.department_id,salary) in (select department_id, max(salary) from employees group by department_id);

#Problem 06 
select 
	j.job_title,
    e.SUMSal
    from jobs j, (select job_id,sum(salary) as SUMSal from employees group by job_id) as e
    where j.job_id = e.job_id;

#Problem 07

select
	d.employee_id,
    d.first_name,
    d.salary
    from (select department_id, avg(salary) as AVGSal from employees group by department_id) as e, 
		(select department_id, employee_id, first_name, salary from employees) as d
	where d.department_id = e.department_id and d.salary > e.AVGSal;
    
