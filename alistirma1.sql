SELECT last_name, hire_date
FROM employees
ORDER BY hire_date;

SELECT last_name, hire_date
FROM employees
ORDER BY hire_date DESC;

desc employees;

SELECT last_name, hire_date AS "Date Started"
FROM employees
ORDER BY "Date Started";

SELECT last_name, hire_date AS "Date Started"
FROM employees
ORDER BY hire_date;

SELECT employee_id, first_name
FROM employees
WHERE employee_id< 105
ORDER BY last_name;

SELECT department_id, last_name
FROM employees
WHERE department_id <= 50
ORDER BY department_id, last_name;

SELECT department_id, last_name
FROM employees
WHERE department_id <= 50
ORDER BY department_id DESC, last_name;

desc employees;

SELECT department_id, last_name
FROM employees
WHERE department_id <= 50
ORDER BY department_id DESC, last_name DESC;

SELECT employee_id, first_name
FROM employees
WHERE employee_id< 105
ORDER BY last_name;

SELECT department_id, last_name
FROM employees
WHERE department_id<= 50
ORDER BY department_id DESC, last_name;
 
SELECT department_id, last_name
FROM employees
WHERE department_id<= 90
ORDER BY department_id DESC, last_name;

select * from dual

SELECT (319/29) + 12
FROM DUAL;

SELECT last_name
FROM employees
WHERE last_name = 'abel';

SELECT last_name
FROM employees
WHERE LOWER(last_name) = 'abel';

SELECT last_name
FROM employees
WHERE UPPER(last_name) = 'ABEL';

SELECT last_name
FROM employees
WHERE INITCAP(last_name) = 'Abel';

SELECT CONCAT('Hello', 'World')
FROM DUAL;

SELECT CONCAT(first_name, last_name)
FROM employees;

SELECT SUBSTR('HelloWorld', 1, 5)
FROM DUAL;

SELECT SUBSTR('HelloWorld', 6)
FROM DUAL;

SELECT SUBSTR(last_name, 1, 3)
FROM employees;

SELECT LENGTH('HelloWorld')
FROM DUAL;

SELECT LENGTH(last_name)
FROM employees;

SELECT INSTR('HelloWorld', 'W')
FROM DUAL;

SELECT last_name, INSTR(last_name, 'a')
FROM employees;

SELECT LPAD('HelloWorld', 15, '-')
FROM DUAL;

SELECT RPAD('HelloWorld', 15, '-')
FROM DUAL;

SELECT TRIM(LEADING 'a' FROM 'abcba')
FROM DUAL;

SELECT TRIM(TRAILING 'a' FROM 'abcba')
FROM DUAL;

SELECT TRIM(BOTH 'a' FROM 'abcba')
FROM DUAL;

SELECT REPLACE('JACK and JUE', 'J', 'BL')
FROM DUAL;

SELECT REPLACE('JACK and JUE', 'J')
FROM DUAL;


SELECT REPLACE(last_name, 'a', '*')
FROM employees;

SELECT LOWER(last_name)|| LOWER(SUBSTR(first_name,1,1))
AS "User Name"
FROM employees;

SELECT LOWER (last_name)||LOWER(SUBSTR(first_name,1,1))
FROM f_staffs;

SELECT first_name, last_name, salary, department_id
FROM employees
WHERE department_id= 10;

SELECT first_name, last_name, salary, department_id
FROM employees
WHERE department_id=:enter_dept_id;

SELECT first_name, last_name, salary, department_id
FROM employees
WHERE department_id=:uyuma_dept_no_gir;


SELECT country_name, MOD(airports,2) AS "Mod Demo"
FROM wf_countries;

SELECT SYSDATE
FROM dual;

SELECT TO_CHAR(SYSDATE, 'DD-MM-YYYY') Bugün
FROM dual;

SELECT last_name, hire_date+60 
FROM employees;

SELECT last_name, (SYSDATE -
hire_date)/7
FROM employees;

SELECT last_name, round((SYSDATE -
hire_date)/7)
FROM employees;

desc job_history

SELECT employee_id, (end_date-
start_date)/365
AS "Tenure in last job"
FROM job_history;

SELECT ADD_MONTHS(SYSDATE, 12)
AS "Next Year"
FROM dual;

SELECT last_name, hire_date
FROM employees
WHERE MONTHS_BETWEEN
(SYSDATE, hire_date) > 240;

SELECT NEXT_DAY (SYSDATE, 'Saturday')
AS "Next Saturday"
FROM dual;

SELECT LAST_DAY (SYSDATE)
AS "End of the Month"
FROM dual;

SELECT hire_date,
ROUND(hire_date, 'Month') "Günebak ayı yuvarla"
FROM employees
WHERE department_id= 50;

SELECT hire_date,
ROUND(hire_date, 'Year') "Tarihebak yılı yuvarla"
FROM employees
WHERE department_id= 50;

SELECT hire_date,
TRUNC(hire_date, 'Month') 
FROM employees
WHERE department_id= 50;

SELECT hire_date,
TRUNC(hire_date, 'Year')
FROM employees
WHERE department_id= 50;

SELECT employee_id, hire_date,
ROUND(MONTHS_BETWEEN(SYSDATE, hire_date)) AS TENURE,
ADD_MONTHS (hire_date, 6) AS REVIEW,
NEXT_DAY(hire_date, 'FRIDAY'), LAST_DAY(hire_date)
FROM employees
WHERE MONTHS_BETWEEN (SYSDATE, hire_date) > 36;
