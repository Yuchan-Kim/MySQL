/*
Join
Insert
Update
Delete
*/

#그룹함수 - 여러행을 하나의 결과값으로 출력
/*
avg()
count()
max()
min()
sum()
*/

/*
#평균은 한 row로 만 표현 가능.
select avg(salary) as 평균월급 
from employees;

#행의 이름을 입력하게 되면, null 값은 제외한다.
select count(*) #Null 값 포함
, count(country_name) 
from countries;

#전체 직원의 급여 합 (null 값 제외)
select sum(salary) from employees; 

select count(*), sum(salary), avg(ifnull(salary,0)) #null 값이 포함되어 있으면 0으로 바꿈.
from employees;

#max(), min()
select count(*), max(salary), min(salary) 
from employees; 

#group by 각 id 별 평균 월급 출력.
select department_id, avg(salary)
from employees
group by department_id
order by department_id asc;

select department_id, count(*), sum(salary)
from employees
group by department_id 
order by department_id asc;

select job_id,department_id, count(*), sum(salary)
from employees
group by job_id, department_id
order by job_id;

#having
select department_id, count(*), sum(salary)
from employees 
group by department_id having sum(salary) >= 20000
order by department_id asc;

select department_id, count(*), sum(salary)
from employees 
group by department_id having sum(salary) >= 20000 and department_id >= 100
order by department_id asc;

#if statement
select 
	first_name,salary,commission_pct,
    if(commission_pct is null, "None", "Exists") as state
    from employees; 

#ifnull statement
select 
	first_name,salary,commission_pct,
    ifnull(commission_pct, "None") as state
from employees; 

select employee_id, salary, job_id, 
	case when job_id = 'AC_ACCOUNT' then salary + salary * 0.1
    when job_id = 'SA_REP' then salary + salary * 0.2 
    when job_id = 'ST_CLERK' then salary + salary * 0.3 else salary
    end as realSalary
from employees;

select first_name,department_id,
	case 
    when department_id >= 10 and department_id <= 59 then 'A-Team'
    when department_id >= 60 and department_id <= 109 then 'B-Team'
    when department_id >= 110 and department_id <= 150 then 'C-Team'
    else '팀 없음'
    end as '팀'
from employees; 

*/
#Join 
/*
select 
	em.department_id, department_name , de.department_id
    from employees em
    inner join departments de on em.department_id = de.department_id;

select em.first_name,em.salary,em.department_id, de.department_name
	from employees em, departments de
    where de.department_id = em.department_id;

select e.first_name,d.department_name, d.department_id
from employees e inner join departments d on employees.department_id = departments.department_id;


#Joins 
/*
select e.first_name, d.department_id, d.department_name, e.department_id, l.city
from employees e, departments d, locations l where e.department_id = d.department_id and d.location_id = l.location_id;

select e.first_name, d.department_id, d.department_name, e.department_id, l.city
	from employees e 
	inner join departments d on e.department_id = d.department_id
	inner join locations l on d.location_id = l.location_id;
*/ 

/*
select count(*)
from employees ;

#left outer join
select 
	e.first_name,
    e.salary,
    d.department_name,
	e.department_id
from employees e 
left outer join departments d on e.department_id = d.department_id;

select
	e.first_name,
    e.salary,
    d.department_name,
    e.department_id
    from employees e right outer join departments d on e.department_id = d.department_id;
 
select 
e.first_name,
    e.salary,
    d.department_name,
    e.department_id
    from departments d left outer join employees e on d.department_id = e.department_id
    where e.department_id is null;
  */  
    
/*
select
	e.first_name, e.salary, e.department_id, d.department_name
    from employees e, departments d
    where e.department_id = d.department_id;

(select e.first_name, e.salary, e.department_id, d.department_name
    from employees e left join departments d on e.department_id = d.department_id)

union
    
(select e.first_name, e.salary, e.department_id, d.department_name
    from departments d right outer join employees e  on e.department_id = d.department_id);
   */ 

select 
	e.job_id as jobID,
    e.first_name,
    e.salary,
    e.department_id,
    d.department_name,
    d.location_id,
    l.city
from employees e , departments d, locations l
where e.department_id = d.department_id and d.location_id = l.location_id
order by e.job_id asc;

select 
	e.job_id,
    e.first_name,
    e.salary,
    e.department_id,
    d.department_name,
    d.location_id,
    l.city
from employees e 
inner join departments d on e.department_id = d.department_id
inner join locations l on d.location_id = l.location_id; 

select 
	e.job_id,
    e.first_name,
    e.salary,
    e.department_id,
    d.department_name,
    d.location_id,
    l.city,
    c.country_id,
    c.country_name
from employees e ,departments d, locations l , countries c
where e.department_id = d.department_id and d.location_id = l.location_id and c.country_id = l.country_id;

select 
	e.job_id,
    e.first_name,
    e.salary,
    e.department_id,
    d.department_name,
    d.location_id,
    l.city,
    c.country_id,
    c.country_name
    from employees e 
		inner join departments d on e.department_id = d.department_id
		inner join locations l on d.location_id = l.location_id
        inner join countries c on c.country_id = l.country_id;

select 
	e.job_id,
    e.first_name,
    e.salary,
    e.department_id,
    d.department_name,
    d.location_id,
    l.city,
    c.country_id,
    c.country_name,
    r.region_id,
    r.region_name
    from employees e ,departments d, locations l , countries c, regions r
    where e.department_id = d.department_id and d.location_id = l.location_id and c.country_id = l.country_id
    and r.region_id = c.region_id;

select 
	e.job_id,
    e.first_name,
    e.salary,
    e.department_id,
    d.department_name,
    d.location_id,
    l.city,
    c.country_id,
    c.country_name,
    r.region_id,
    r.region_name
    from employees e 
		inner join departments d on e.department_id = d.department_id
		inner join locations l on d.location_id = l.location_id
        inner join countries c on c.country_id = l.country_id
        inner join regions r on r.region_id = c.region_id;
        

select 
	e.job_id,
    e.first_name,
    e.salary,
    e.department_id,
    d.department_name,
    d.location_id,
    l.city,
    c.country_id,
    c.country_name,
    r.region_id,
    r.region_name
    from employees e 
		left outer join departments d on e.department_id = d.department_id
		left outer join locations l on d.location_id = l.location_id
        left outer join countries c on c.country_id = l.country_id
        left outer join regions r on r.region_id = c.region_id;

select 
	e.job_id,
    e.first_name,
    e.email,
    e.manager_id,
    e.email,
    e.phone_number
    from employees e
    where e.manager_id is null;
    
    
#self join
select e.job_id,
    e.first_name,
    e.email,
    e.manager_id,
    m.first_name,
    m.email,
    m.phone_number
	from employees e, employees m
    where e.manager_id = m.employee_id;
    

        



