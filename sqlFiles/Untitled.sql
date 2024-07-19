

-- 정수/정수 소수점까지 계산 가능 
select first_name,
		salary 월급, salary - 100 '월급-식대', 
        salary*12 연봉, 
        salary*12+5000 보너스포함,
        salary/30 일급, 
        employee_id%3 '워크샵 팀' 
from employees;


-- 문자열에 숫자를 곱할 시 0으로 계산되어 출력함.
select job_id * 12
from employees;

-- 컬럼 합치기
select concat(first_name, last_name) -- 띄어쓰기 없음.
from employees; 

select  concat(first_name," ", last_name) -- 띄어쓰기 있음.
from employees; 

select  
	concat(first_name, " ", last_name, ' was hired on ', hire_date)
from employees;

select
	concat(phone_number,"       ",email) as 정보
	concat(first_name, " ", last_name, ' was hired on ', hire_date)
	concat(job_id,"       ",salary) 월급
from employees;








