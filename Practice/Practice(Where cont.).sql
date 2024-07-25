
#Lex인 사람만 출력
select 
	first_name,
    salary
from employees
where first_name = 'Lex';

#L로 시작하는 사람의 이름을 원할때 
select
	first_name, salary
from employees
where first_name like 'L%';

#L로 끝나는 사람의 이름
select
	first_name, salary
from employees
where first_name like '%L';

#예제 
#네글자 이름중 두번째에 a가 포함되어 있는경우.
select
	first_name, salary
from employees
where first_name like '_a__';

#이름에 am이 포함되어있는 경우
select
	first_name, salary
from employees
where first_name like '%am%';

#이름의 4번째에 a가 포함되어 있는경우.
select
	first_name, salary
from employees
where first_name like '___a%';

#두번째에 a가 포함되어 있는경우.
select
	first_name, salary
from employees
where first_name like '_a%';

#이름에 L이 포함되어 있는 경우.
select
	first_name, salary
from employees
where first_name like '%L%';


#NULL
select
	first_name,salary,commission_pct, salary*commission_pct
from employees
where salary between 13000 and 15000;

#is null / is not null
select first_name,salary,commission_pct
from employees
where commission_pct is null;

select first_name,salary,commission_pct
from employees
where commission_pct is not null;

#order by
select first_name, salary 
from employees
order by salary desc;

select first_name, salary 
from employees
order by salary asc;

select first_name, salary 
from employees
order by salary; -- 기본적으로 오름차순

select first_name, salary 
from employees 
where salary >= 9000
order by salary desc; 

select first_name, salary 
from employees 
where salary >= 9000
order by salary desc, first_name asc; -- 정렬조건이 2개 이상일 때에는 ,로 구분한다. 

select department_id, salary, first_name
from employees
order by department_id asc;


#예제
#부서번호 오름차순, 부서번호,월급,이름 출력
select first_name,salary
from employees where salary >= 10000
order by salary desc ;

#월급 10000이상 직원이름, 월급 출력, 월급이 큰 직원 기준.
select  salary,department_id, first_name
from employees order by salary desc; 

#기준 2개, 같은 부서번호를 가질때는 급여는 내림차순으로 정렬.
select  department_id, first_name, salary
from employees order by department_id asc, salary desc;

select first_name,salary,hire_date 
from employees order by first_name asc;

select first_name,salary,hire_date
from employees order by hire_date asc;









