SELECT * FROM departments; 

SELECT * FROM employees; 

SELECT first_name, last_name, job_id 
FROM employees 

WHERE job_id= 'SA_REP'; 
SELECT country_id, country_name, region_id 
FROM countries;

desc countries; 

SELECT location_id, city, state_province 
FROM locations; 

SELECT last_name, salary, salary + 300 
FROM employees; 

SELECT last_name Name, 
salary*12 Annual, first_name 
FROM employees;
 
SELECT employee_id, first_name, last_name 
FROM employees 
WHERE employee_id= 101; 

SELECT first_name, last_name 
FROM employees 
WHERE last_name= 'Taylor'; 

SELECT last_name, salary 
FROM employees 
WHERE salary BETWEEN 9000 AND 11000; 

SELECT city, state_province, country_id 
FROM locations 
WHERE country_id IN('UK', 'CA'); 

SELECT city, state_province, country_id 
FROM locations 
WHERE country_id= 'UK' OR country_id= 'CA';
 
SELECT last_name 
FROM employees 
WHERE last_name LIKE '_o%'; 

SELECT last_name, job_id 
FROM EMPLOYEES 
WHERE job_id LIKE '%\_R%' ESCAPE '\'; 

SELECT last_name, job_id 
FROM EMPLOYEES 
WHERE job_id LIKE '%_R%' 

SELECT last_name, job_id 
FROM EMPLOYEES 
WHERE job_id LIKE '%R%' 

SELECT last_name, job_id 
FROM EMPLOYEES 
WHERE job_id LIKE '\_R%'  

SELECT last_name, job_id 
FROM EMPLOYEES 
WHERE job_id LIKE '\_%R%' ESCAPE '\' 

SELECT last_name, manager_id 
FROM employees 
WHERE manager_id IS NULL; 

SELECT last_name, commission_pct 
FROM employees 
WHERE commission_pct IS NOT NULL; 

SELECT last_name, department_id, salary 
FROM employees 
WHERE department_id> 50 AND salary > 12000; 

SELECT last_name, hire_date, job_id 
FROM employees 
WHERE job_id like '%V%' AND last_name LIKE '_e%'; 

SELECT department_name, dept_manager_id, location_id 
FROM departments 
WHERE location_id= 2500 OR dept_manager_id=124; 

desc departments; 

SELECT department_name, location_id 
FROM departments 
WHERE location_id NOT IN (1700,1800); 

SELECT last_name||' '||salary*1.05 As "Employee Raise" 
FROM employees 
WHERE department_id IN(50,80) AND first_name LIKE 'C%' 
OR last_name LIKE '%s%'; 

SELECT last_name||' '||salary*1.05 As "Employee Raise" 
FROM employees 
WHERE last_name LIKE '%s%';