select * from employees

SELECT ROUND(AVG(salary),2)
FROM employees
WHERE department_id = 90

SELECT ROUND(AVG(salary),2)
FROM employees
WHERE department_id = 50

SELECT ROUND(SUM(salary),2)
FROM employees
WHERE department_id = 80

SELECT department_id, ROUND(SUM(salary),2)
FROM employees
GROUP BY department_id
ORDER BY department_id;

SELECT department_id, ROUND(SUM(salary),2) as TPLÜcrt
FROM employees
GROUP BY department_id
ORDER BY TPLÜcrt;

SELECT department_id, ROUND(SUM(salary),2) as SUMSAL
FROM employees
GROUP BY department_id
ORDER BY SUM(salary) DESC ;

SELECT department_id, job_id, SUM(salary)
FROM employees
GROUP BY ROLLUP (department_id, job_id);

SELECT department_id, job_id, SUM(salary)
FROM employees
GROUP BY CUBE (department_id, job_id);

SELECT department_id, job_id, manager_id, SUM(salary)
FROM employees
GROUP BY GROUPING SETS
((job_id, manager_id), (department_id, job_id), (department_id, manager_id));

SELECT hire_date, employee_id, TO_DATE(null) start_date,
TO_DATE(null) end_date, job_id, department_id
FROM employees
UNION
SELECT TO_DATE(null), employee_id, start_date, end_date, job_id,
department_id
FROM job_history
ORDER BY employee_id;