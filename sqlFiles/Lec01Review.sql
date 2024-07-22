
#use hr_db;  어떤 데이터를 사용할 건지 정의 해줌.

#select * from employees;  *의 의미는 전체를 뜻한다. 

#select now() from dual; 하게 되면 열의 갯수 만큼 현재 날짜 및 시간을 표시한다.

#select now() 만 하게 되면 한줄로 뜨게 된다. 

/* 사칙연산 
select 
	column1, 
	column2 as 별명, --> 행의 이름이 별명으로 표시된다.
    column2.1 별명 --> as 문법이 없어도 별명 부여가능.
    column3  * 12 --> 행의 데이터가 숫자로 형성되어 있으면 12를 곱한다.
from employees;
*/


/* 행 합치기
select 
	concat (first_name, last_name) --> 두 행이 한 행으로 합쳐져서 표시됌, 이때 별명도 사용 가능
    concat (first_name,"   ", last_name) --> 띄어쓰기도 포함해서 표시 가능. 띄어쓰기 대신 _ , - 등등 특수 문자가 들어갈 수 있다.
from employees; 
*/

/* where clause

=, !=, <>, >, <, >=, <= 연산자 사용 가능

select first_name, salary
from employees 
where salary >= 14000; 

select first_name, salary
from employees 
where salary != 14000; 

select first_name, salary
from employees 
where salary = 14000; 

이때 and, &&, or, || 전부 사용가능
select first_name, salary
from employees 
where salary = 14000 and salary = 17000

where salary = 14000 or salary = 17000

where salary = 14000 && salary = 17000

where salary = 14000 || salary = 17000

날짜를 비교해야 하는 경우
where date = '2024/07/15' 등등 mm/dd/yyyy , yyyy/mm/dd, yy/mm/dd 다양하게 날짜 표현 가능.

where ssalary between 14000 and 17000; --> Bigger or equal to 14000 and Smaller or equal to 17000.



*/


