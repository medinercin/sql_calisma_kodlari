SELECT last_name, hire_date ,department_id
FROM employees 
WHERE EXTRACT(YEAR FROM hire_date) IN 
(SELECT EXTRACT(YEAR FROM hire_date) FROM employees WHERE department_id=90);


SELECT last_name, hire_date ,department_id
FROM employees 
WHERE EXTRACT(YEAR FROM hire_date) < Any
(SELECT EXTRACT(YEAR FROM hire_date) FROM employees WHERE department_id=90);

SELECT last_name, hire_date ,department_id
FROM employees 
WHERE EXTRACT(YEAR FROM hire_date) > Any
(SELECT EXTRACT(YEAR FROM hire_date) FROM employees WHERE department_id=90);

SELECT last_name, hire_date 
FROM employees 
WHERE EXTRACT(YEAR FROM hire_date) < ALL 
(SELECT EXTRACT(YEAR FROM hire_date) FROM employees WHERE department_id=90); 

SELECT last_name, hire_date 
FROM employees 
WHERE EXTRACT(YEAR FROM hire_date) > ALL 
(SELECT EXTRACT(YEAR FROM hire_date) FROM employees WHERE department_id=90); 

SELECT last_name, hire_date, TO_CHAR(hire_date, 'YYYY') YEAR 
FROM employees 
WHERE TO_CHAR(hire_date, 'YYYY') < ALL 
(SELECT TO_CHAR(hire_date, 'YYYY') FROM employees WHERE department_id=110); 

SELECT last_name, hire_date, TO_CHAR(hire_date, 'YYYY') YEAR 
FROM employees 
WHERE TO_CHAR(hire_date, 'YYYY') > ALL 
(SELECT TO_CHAR(hire_date, 'YYYY') FROM employees WHERE department_id=110); 

SELECT last_name, manager_id FROM employees 
where manager_id is null 

SELECT last_name, employee_id FROM employees 
WHERE employee_id <= ALL 
(SELECT manager_id FROM employees); 

SELECT department_id, MIN(salary) FROM employees 
GROUP BY department_id 
HAVING MIN(salary) <ANY 
(SELECT salary FROM employees WHERE department_id IN (10,20)) 
ORDER BY department_id;

SELECT employee_id, manager_id, department_id FROM employees 
WHERE(manager_id,department_id) IN 
(SELECT manager_id,department_id FROM employees WHERE employee_id IN (149,174)) 
AND employee_id NOT IN (149,174)

SELECT employee_id, manager_id, department_id FROM employees 
WHERE manager_id IN 
(SELECT manager_id FROM employees WHERE employee_id IN (149,174)) 
AND department_id IN 
(SELECT department_id FROM employees WHERE employee_id IN (149,174)) 
AND employee_id NOT IN(149,174);

SELECT manager_id,employee_id ,last_name FROM employees where manager_id is not null

SELECT last_name AS "Not a Manager" 
FROM employees  
WHERE employee_id NOT IN  
(SELECT manager_id FROM employees where manager_id is not null)

SELECT last_name AS "Not a Manager" 
FROM employees emp 
WHERE NOT EXISTS 
(SELECT* FROM employees mgr WHERE mgr.manager_id = emp.employee_id); 

SELECT SUBSTR(first_name,1,1) ||''|| last_name 
AS "Employee", salary AS "Salary", department_name 
AS "Department Name" FROM employees e  JOIN 
departments d ON e.department_id = d.department_id 
WHERE salary > 
(SELECT AVG(salary) FROM employees sqe 
WHERE sqe.department_id = e.department_id); 

SELECT o.first_name, i.department_name 
o.last_name, o.salary 
FROM employees o WHERE o.salary > 
(SELECT AVG(i.salary) FROM employees i 
WHERE i.department_id = o.department_id); 

SELECT e.last_name,
    d.department_name,
    l.city,
    l.state_province
FROM departments d
LEFT JOIN employees e ON d.department_id = e.department_id
LEFT JOIN  locations l ON d.location_id = l.location_id
ORDER BY last_name;


SELECT LPAD(last_name, LENGTH(last_name) + (LEVEL*2)-2, '_') AS ORG_CHART
FROM employees
START WITH last_name='Grant'
CONNECT BY employee_id= PRIOR manager_id


#Soru1
A) SELECT (30+hire_date)+1440/24 FROM employees;

B) SELECT (SYSDATE -hire_date)+10*8 FROM employees;

C) Select (SYSDATE-TO_DATE ('JUN-25-2002' ) +hire_date) FROM employees;

D) Select (hire_date-SYSDATE )+TO_DATE ('JUN-25-2002' ) FROM employees;

E) Select (hire_date-SYSDATE )+ 5 +TO_DATE ('JUN-25-2002' ) FROM employees;


SELECT TO_CHAR (hire_date,'Month DD, YYYY') FROM employees;


SELECT SYSDATE +30/24 FROM DUAL;

SELECT SYSDATE-6 FROM DUAL;
SELECT NEXT_DAY(hire_date) FROM employees;

SELECT TO_DATE('30-06-1997','DD-MM-YYYY') FROM dual;

