SELECT o.first_name, 
o.last_name, 
o.salary, o.department_id 
FROM employees o 
WHERE o.salary >= 
(SELECT AVG(i.salary) 
FROM employees i 
WHERE i.department_id=o.department_id); 



SELECT last_name AS "Not a Manager" 
FROM employees emp 
WHERE NOT EXISTS 
(SELECT * 
FROM employees mgr 
WHERE mgr.manager_id= emp.employee_id); 
SELECT last_name AS "Not a Manager" 
FROM employees emp 
WHERE emp.employee_id NOT IN 
(SELECT mgr.manager_id 
FROM employees mgr); 


SELECT last_name AS "Not a Manager" 
FROM employees emp 
WHERE emp.employee_id NOT IN 
(SELECT NVL(mgr.manager_id,0) 
FROM employees mgr); 


SELECT last_name AS "Not a Manager" 
FROM employees emp 
WHERE emp.employee_id NOT IN 
(SELECT mgr.manager_id 
FROM employees mgr Where mgr.employee_id != 100); 
WITH managers AS 
(SELECT DISTINCT manager_id 
FROM employees 
WHERE manager_id IS NOT NULL) 
SELECT last_name AS "Not a manager" 
FROM employees 
WHERE employee_id NOT IN 
(SELECT * FROM managers); 
WITH MNG AS( 
select distinct e.manager_id, count(*) sayı  
from employees e, employees m 
group by e.manager_id 
having e.manager_id = m.employee_id) 
select mng.manager_id,first_name,sayı  from 
MNG, employees 
where mng.manager_id=employee_id 
order by mng.manager_id; 
Self Joins e destek örnek: 
SELECT m.employee_id, m.first_name, 
m.last_name,distinct(m.manager_id) 
FROM employees e, employees m 
WHERE e.manager_id=m.employee_id 
SELECT distinct(m.manager_id), m.employee_id, m.first_name, 
m.last_name 
FROM employees e, employees m 
WHERE e.manager_id=m.employee_id 
ORDER BY m.manager_id;
