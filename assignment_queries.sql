--How many people work in the Sales department?
SELECT COUNT(emp_name) 
FROM employee 
JOIN department 
ON department.id = employee.department 
WHERE dept_name = 'Sales';

--List the names of all employees assigned to the 'Plan Christmas party' project.
SELECT emp_name 
FROM employee 
JOIN employee_project 
ON employee.id = employee_project.emp_id 
JOIN project 
ON employee_project.project_id = project.id 
WHERE project_name = 'Plan christmas party'; 

--List the names of employees from the Warehouse department that are assigned to the 'Watch paint dry' project.
SELECT emp_name 
FROM employee 
JOIN department 
ON department.id = employee.department 
JOIN employee_project 
ON employee.id = employee_project.emp_id 
JOIN project 
ON employee_project.project_id = project.id  
WHERE dept_name = 'Warehouse'
AND project_name = 'Watch paint dry';

--Which projects are the Sales department employees assigned to?
SELECT e.emp_name as full_name, p.project_name as project
FROM department d
JOIN employee e
ON d.id = e.department
JOIN employee_project
ON e.id = employee_project.emp_id
JOIN project p
ON employee_project.project_id = p.id
where d.id = 2;

--List only the managers that are assigned to the 'Watch paint dry' project.
SELECT e.emp_name as full_name, p.project_name as project
FROM department d
JOIN employee e
ON d.id = e.department
JOIN employee_project
ON e.id = employee_project.emp_id
JOIN project p
ON employee_project.project_id = p.id
WHERE d.id = 2
AND d.manager = e.id;