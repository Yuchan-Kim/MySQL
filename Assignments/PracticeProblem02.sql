#Problem 01 
select count(manager_id) as haveMngCnt 
	from employees;
    

#Problem 02
select max(salary) as '최고임금', 
	min(salary) as '최저임금', 
    max(salary) - min(salary) as '최고임금 - 최저임금'
    from employees;

#Problem 03
select date_format(max(hire_date), '%Y년 %m월 %d일') as '최 신입 사원 입사일'
from employees;

#Problem 04 
select department_id, avg(salary), max(salary), min(salary)
from employees
group by department_id
order by department_id asc;

#Problem 05
select e.job_id,round(avg(e.salary),0), j.min_salary, j.max_salary
from employees e inner join jobs j on e.job_id = j.job_id
group by e.job_id
order by j.min_salary desc, round(avg(e.salary),0) asc;

#Problem 06
select date_format(min(hire_date) ,'%Y-%m-%d %W') as '가장 일찍 입사한 사원의 입사일'
from employees; 

#Problem 07 
select e.department_id, avg(e.salary), j.min_salary, (avg(e.salary) - j.min_salary)
	from employees e 
    inner join jobs j on e.job_id = j.job_id 
	group by e.department_id, j.min_salary having  (avg(e.salary) - j.min_salary) < 2000
	order by (avg(e.salary) - j.min_salary) desc ;

#Problem 08 
select job_id, (min_salary - max_salary) 
from jobs 
group by job_id
order by job_id desc;



#Problem 09
select
	truncate(avg(salary),1) as A, min(salary) as m, max(salary) as ma, manager_id 
    from employees where hire_date > "2005-12-31"
    group by manager_id having A > 5000
    order by A asc;
    
#Problem 10

select first_name, hire_date,
	case 
		when hire_date <= '2002-02-12' then '창립맴버'
        when hire_date >= '2002-02-13' and hire_date <= '2002-12-31' then '02년 입사'
		when hire_date >= '2003-01-01' and hire_date <= '2003-12-31' then '03년 입사'
		when hire_date >= '2004-01-01' and hire_date <= '2004-12-31' then '04년 입사'
		else '상장이후 입사' 
    end optDate
    from employees
    order by hire_date asc;


#Problem 11
select concat(date_format(min(hire_date), '%Y년 %m월 %d일'), ' ',
	case dayofweek(min(hire_date))
		when 1 then '(박지민)'
		when 2 then '(월요일)'
		when 3 then '(화요일)'
		when 4 then '(수요일)'
		when 5 then '(목요일)'
		when 6 then '(금요일)'
		when 7 then '(박지민)'
        end) as hired_date
	from employees;
    
    
    
   
