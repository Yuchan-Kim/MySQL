

/***********************************
select 문(조회)
************************************/

-- *select ~ from 절
-- 테이블 전체 조회하기
select * from employees;
select * from departments;
select * from locations;
select * from countries;
select * from regions;
select * from jobs;
select * from job_history;
SELECT * FROM JOB_HISTORY;
SELECT * fRom joB_History;

-- *select 절
select first_name, phone_number from employees;

-- 모든 직원의 이름(fisrt_name)과 전화번호 입사일 월급을 출력하세요
select first_name, phone_number, hire_date, salary from employees;

-- 모든 직원의 이름(first_name)과 성(last_name), 월급, 전화번호, 이메일, 입사일을 출력하세요
select  email,
      first_name, 
      last_name, 
      phone_number, 
        hire_date,
        salary
from employees;

select   email
      ,first_name 
      ,hire_date
      ,phone_number 
        ,last_name 
      ,salary
from employees;

-- * 컬럼명에 별명 사용하기
select first_name as 이름, last_name as 성 from employees;

-- 직원의 이름(fisrt_name)과 전화번호, 입사일, 월급 으로 표시되도록 출력하세요



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
	concat(phone_number,"       ",email) as 정보,
	concat(first_name, " ", last_name, ' was hired on ', hire_date),
	concat(job_id,"       ",salary) 월급
from employees;

select 
	concat(first_name, "-", last_name) 성명,
    salary 월급,
    salary*12 연봉,
    salary*12+5000 보너스,
    phone_number
from employees;

select first_name,salary, '(주)개발자' as company,3 from employees;

select 
	first_name, salary,
	now() as 기준일,  #현재시간 
    3 as 옵션,
    '자바ex' as 회사명
from employees;
 
select now()
from employees;

select now(); #You can skip the table name.

select concat(first_name,"    ",last_name) 이름 , department_id 부서이름 from employees WHERE department_id = 10;
























