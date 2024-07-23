#Problem 01
select 
	e.employee_id,
    e.first_name,
    e.last_name,
    d.department_name
from employees e 
inner join departments d on e.department_id = d.department_id
order by d.department_name asc, e.employee_id desc;

#Problem 02
select 
	e.employee_id,
    e.first_name,
    e.salary,
    d.department_name,
    j.job_title
from employees e 
inner join departments d on e.department_id = d.department_id
inner join jobs j on e.job_id = j.job_id
order by e.employee_id asc;

#Problem 02-1
select 
	e.employee_id,
    e.first_name,
    e.salary,
    d.department_name,
    j.job_title
from employees e 
left outer join departments d on e.department_id = d.department_id
left outer join jobs j on e.job_id = j.job_id
order by e.employee_id asc;

#Problem 03 
select 
	l.location_id,
    l.city,
    d.department_name,
    d.department_id
from departments d 
inner join locations l on d.location_id = l.location_id
order by l.location_id asc;

#Problem 03-1
(select 
	l.location_id,
    l.city,
    d.department_name,
    d.department_id
from departments d 
left outer join locations l on d.location_id = l.location_id
order by l.location_id asc)

union

(select 
	l.location_id,
    l.city,
    d.department_name,
    d.department_id
from departments d 
right outer join locations l on d.location_id = l.location_id
order by l.location_id asc);

#Problem 04
select
	r.region_name,
    c.country_name
from regions r 
inner join countries c on r.region_id = c.region_id
order by r.region_name asc ,  c.country_name desc;

#Problem 05
select 
	emp.employee_id,
    emp.first_name,
    emp.hire_date,
    man.first_name,
    man.hire_date
from employees emp, employees man
where emp.manager_id = man.employee_id and emp.hire_date < man.hire_date;


#Problem 06 
select 
	c.country_id,
	c.country_name,
    l.location_id,
    l.city,
    d.department_id,
    d.department_name
from countries c 
inner join locations l on c.country_id = l.country_id 
inner join departments d on l.location_id = d.location_id
order by c.country_name asc;

#Problem 07
select 
	e.employee_id,
    concat(e.first_name,e.last_name) as Full_Name,
    e.job_id,
    jh.job_id,
    jh.start_date,
    jh.end_date
from employees e 
inner join job_history jh on e.employee_id = jh.employee_id
where jh.job_id = 'AC_ACCOUNT';


#Problem 08
select
	d.department_id,
    d.department_name,
    e.first_name,
    l.city,
    c.country_name,
    r.region_name
from employees e
inner join departments d on d.manager_id = e.employee_id
inner join locations l on d.location_id= l.location_id 
inner join countries c on l.country_id= c.country_id 
inner join regions r on r.region_id = c.region_id;

#Problem 09
select 
	e.employee_id,
    e.first_name,
    d.department_name,
    man.first_name
from employees e
left outer join employees man on e.manager_id = man.employee_id
left outer join departments d on e.department_id = d.department_id;

#Problem 09-1
select
	e.employee_id,
    e.first_name,
    d.department_name,
    man.first_name
from employees e
left outer join employees man on e.manager_id = man.employee_id 
left outer join departments d on e.department_id = d.department_id
where e.manager_id is not null;

#Problem 09-2
select
	e.employee_id,
    e.first_name,
    d.department_name,
    man.first_name
from employees e
left outer join employees man on e.manager_id = man.employee_id 
left outer join departments d on e.department_id = d.department_id
where e.manager_id is not null and e.department_id is not null;
	
    


    
    
    
    
    
    
    
    
    


