#Sub Query

#Review
/*
1. equi join (where) --> Does not contain null data
2. inner join (table) on 
	- only shows the matching data
    - outer join
		- left (outer) join
		- right (outer) join
        - union 
*/
# Show the employee's name who earns more than the person whose name is Den
select salary
from employees 
where first_name = 'Den';

select first_name, salary
from employees 
where salary > (select salary from employees where first_name = 'Den');

select first_name, salary
from employees 
where salary = (select min(salary) from employees);

select avg(salary)
from employees;

select first_name, salary
from employees
where salary < (select avg(salary) from employees);

#sub query의 결과 값이 여러 줄인 경우
select employee_id, first_name, salary
from employees 
where (department_id,salary) in 
(select department_id, salary from employees where department_id = 110);


#각 부서별 최고 월급을 받는 사원의 이름과 월급
select department_id, first_name,salary
from employees
where (department_id,salary) in 
(select department_id,max(salary) from employees group by department_id)
order by department_id asc;


select first_name,salary
from employees
where salary > any (select salary from employees where department_id = 110)
order by salary asc;

#부서번호 110의 직원 월급중 가장 작은 월급 보다 월급이 많은 모든 직원의 이름, 급여 출력
select department_id,first_name,salary
from employees
where salary > any  (select salary from employees where department_id = 110);

select department_id,first_name,salary
from employees
where salary > all  (select salary from employees where department_id = 110);


select department_id,first_name,salary
from employees
where salary > all (select max(salary) from employees where department_id = 110);

#각 부서별 최고월급을 받는 사원의 부서번호, 직원 번호, 이름, 월급

select department_id,employee_id,first_name,salary
from employees 
where salary > all (select salary from employees group by department_id);


                                     

select first_name
      ,salary
        ,hire_date
from employees
where hire_date = ( select  min(hire_date) -- 월급이 적은 사람중에 오래근무한 사람
                        from employees
                        where salary <all (select salary -- 나중에 입사한 직원보다 월급이 적은 사람
                                     from employees
                                    where hire_date = (select max(hire_date)  -- 가장 나중에 입사 직원
                                                   from employees)));
                                                   







































