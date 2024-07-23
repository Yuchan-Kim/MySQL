#단일행 함수

#숫자함수 
#round (반올림)
select round(123.123,2); #소수점 두번째 자리까지
select round(123.123,1); #소수점 첫번째 자리까지
select round(123.123,3); #소수점 세번째 자리까지 
select round(123.123,-2); #10의 자리에서 반올림 후 출력 (result: 100)
select round(123.123,-1); #1의 자리에서 반올림 후 출력 (result 120)

#ceil (소수점 올림)
select ceil(120.34); #121

#floor (소수점 내림)
select floor(123.3444); #123

#truncate (소수점 버림)
select truncate(12.2222,3); #12.2

#Power
select power(12,2); #12의 2승 
select pow(12,2); #12의 2승 

#Square root
select sqrt(144); #12

#sign
select sign(123); #1
select sign(-1); #-1
select sign(0); #0

#absolute value
select abs(123); #123
select(-123); #-124

#Greatest / Least
select greatest(2,0,-2); #2
select greatest('B','a','b','C'); #b
select least('B','A','a'); #A
select least(2,-1,-2); #-2


#문자함수 
#concate_ws gives seperator with strings
select concat_ws('-', first_name, last_name, salary) from employees;

select 
	first_name, 
    length(first_name), char_length(first_name), character_length(first_name)
from employees;

#한글 글자의 길이가 다른이유는 한 글자랑 3byte로 입력받기 때문 
#길이를 정확이 확인 할때는 char_length를 사용하는것이 낫다.

#substring(str, position, length)
select first_name, substr(first_name,1,3), substr(first_name,-3,2)
from employees
where department_id = 100;

#lad, rpad
select first_name, 
	lpad(first_name,10, '*')as jiminpark,
    rpad(first_name,10,'8') as parkJimin
from employees;

#date_format(date,format)
select now(),
	date_format(now(), '%y-%m-%d(%a) %h:%i:%s %p')
    from dual;






