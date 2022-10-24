/* 1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.*/
select employees.employee_name, salary.monthly_salary from salary 
join employee_salary on salary.id = employee_salary.salary_id join employees on employees.id = employee_salary.employee_id;

/*2. ������� ���� ���������� � ������� �� ������ 2000.*/
select employees.employee_name, salary.monthly_salary from salary 
join employee_salary on salary.id = employee_salary.salary_id join employees on employees.id = employee_salary.employee_id
where monthly_salary < '2000';

/*3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)*/
select employees.employee_name, salary.monthly_salary from salary 
left join employee_salary on salary.id = employee_salary.salary_id left join employees on employees.id = employee_salary.employee_id
where employee_salary.salary_id is null;

/* 4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)*/
select employees.employee_name, salary.monthly_salary from salary 
left join employee_salary on salary.id = employee_salary.salary_id left join employees on employees.id = employee_salary.employee_id
where employee_salary.salary_id is null and monthly_salary < '2000';

/*5. ����� ���� ���������� ���� �� ��������� ��.*/
select employees.employee_name, salary.monthly_salary from salary 
right join employee_salary on salary.id = employee_salary.salary_id right join employees on employees.id = employee_salary.employee_id
where employee_salary.employee_id is null;

/*6. ������� ���� ���������� � ���������� �� ���������.*/
select employees.employee_name, roles.role_name from employees
join roles_employee on employees.id = roles_employee.employee_id join roles on roles.id = roles_employee.role_id
order by employees.employee_name;

/*7. ������� ����� � ��������� ������ Java �������������.*/
select employees.employee_name, roles.role_name from employees
join roles_employee on employees.id = roles_employee.employee_id join roles on roles.id = roles_employee.role_id
where roles.role_name like '%Java%' and roles.role_name not like '%Script%';

 /*8. ������� ����� � ��������� ������ Python �������������.*/
select employees.employee_name, roles.role_name from employees
join roles_employee on employees.id = roles_employee.employee_id join roles on roles.id = roles_employee.role_id
where roles.role_name like '%Python%';

/*9. ������� ����� � ��������� ���� QA ���������.*/
select employees.employee_name, roles.role_name from employees
join roles_employee on employees.id = roles_employee.employee_id join roles on roles.id = roles_employee.role_id
where roles.role_name like '%QA%';

/*10. ������� ����� � ��������� ������ QA ���������.*/
select employees.employee_name, roles.role_name from employees
join roles_employee on employees.id = roles_employee.employee_id join roles on roles.id = roles_employee.role_id
where roles.role_name like '%Manual QA%';

/*11. ������� ����� � ��������� ��������������� QA*/
select employees.employee_name, roles.role_name from employees
join roles_employee on employees.id = roles_employee.employee_id join roles on roles.id = roles_employee.role_id
where roles.role_name like '%Automation QA%';

/* 12. ������� ����� � �������� Junior ������������*/
select employees.employee_name, roles.role_name, salary.monthly_salary from employees
join employee_salary on employees.id = employee_salary.employee_id join salary on salary.id = employee_salary.id
join roles_employee on roles_employee.employee_id = employees.id join roles on  roles.id = roles_employee.role_id
where roles.role_name like '%Junior%';

/* 13. ������� ����� � �������� Middle ������������*/
select employees.employee_name, roles.role_name, salary.monthly_salary from employees
join employee_salary on employees.id = employee_salary.employee_id join salary on salary.id = employee_salary.id
join roles_employee on roles_employee.employee_id = employees.id join roles on  roles.id = roles_employee.role_id
where roles.role_name like '%Middle%';

/* 14. ������� ����� � �������� Senior ������������*/
select employees.employee_name, roles.role_name, salary.monthly_salary from employees
join employee_salary on employees.id = employee_salary.employee_id join salary on salary.id = employee_salary.id
join roles_employee on roles_employee.employee_id = employees.id join roles on  roles.id = roles_employee.role_id
where roles.role_name like '%Senior%';

/*15. ������� �������� Java �������������*/
select  roles.role_name, salary.monthly_salary from salary
join employee_salary on salary.id = employee_salary.id
join roles_employee on roles_employee.employee_id = employee_salary.id join roles on  roles.id = roles_employee.role_id
where roles.role_name like '%Java%' and roles.role_name not like '%Script%';

/*16. ������� �������� Python �������������*/
select  roles.role_name, salary.monthly_salary from salary
join employee_salary on salary.id = employee_salary.id
join roles_employee on roles_employee.employee_id = employee_salary.id join roles on  roles.id = roles_employee.role_id
where roles.role_name like '%Python%';

/*17. ������� ����� � �������� Junior Python �������������*/
select employees.employee_name, roles.role_name, salary.monthly_salary from employees
join employee_salary on employees.id = employee_salary.employee_id join salary on salary.id = employee_salary.id
join roles_employee on roles_employee.employee_id = employees.id join roles on  roles.id = roles_employee.role_id
where roles.role_name like '%Junior Python%';

/*18. ������� ����� � �������� Middle JS �������������*/
select employees.employee_name, roles.role_name, salary.monthly_salary from employees
join employee_salary on employees.id = employee_salary.employee_id join salary on salary.id = employee_salary.id
join roles_employee on roles_employee.employee_id = employees.id join roles on  roles.id = roles_employee.role_id
where roles.role_name like '%Middle JavaScript%';

/*19. ������� ����� � �������� Senior Java �������������*/
select employees.employee_name, roles.role_name, salary.monthly_salary from employees
join employee_salary on employees.id = employee_salary.employee_id join salary on salary.id = employee_salary.id
join roles_employee on roles_employee.employee_id = employees.id join roles on  roles.id = roles_employee.role_id
where roles.role_name like '%Senior Java%'and roles.role_name not like '%Script%';

/*20. ������� �������� Junior QA ���������*/
select roles.role_name, salary.monthly_salary from salary
join employee_salary on salary.id = employee_salary.id
join roles_employee on roles_employee.employee_id = employee_salary.id join roles on  roles.id = roles_employee.role_id
where roles.role_name like '%Junior%' and roles.role_name like '%QA%';

/*21. ������� ������� �������� ���� Junior ������������*/
select avg(salary.monthly_salary) from salary
join employee_salary on salary.id = employee_salary.id
join roles_employee on roles_employee.employee_id = employee_salary.id join roles on  roles.id = roles_employee.role_id
where roles.role_name like '%Junior%';

/* 22. ������� ����� ������� JS �������������*/
select sum(salary.monthly_salary) from salary
join employee_salary on salary.id = employee_salary.id
join roles_employee on roles_employee.employee_id = employee_salary.id join roles on  roles.id = roles_employee.role_id
where roles.role_name like '%JavaScript%';

/* 23. ������� ����������� �� QA ���������*/
select min(salary.monthly_salary) from salary
join employee_salary on salary.id = employee_salary.id
join roles_employee on roles_employee.employee_id = employee_salary.id join roles on  roles.id = roles_employee.role_id
where roles.role_name like '%QA%';

/* 24. ������� ������������ �� QA ���������*/
select max(salary.monthly_salary) from salary
join employee_salary on salary.id = employee_salary.id
join roles_employee on roles_employee.employee_id = employee_salary.id join roles on  roles.id = roles_employee.role_id
where roles.role_name like '%QA%';

/*25. ������� ���������� QA ���������*/
select count(salary.monthly_salary) from salary
join employee_salary on salary.id = employee_salary.id
join roles_employee on roles_employee.employee_id = employee_salary.id join roles on  roles.id = roles_employee.role_id
where roles.role_name like '%QA%';

/* 26. ������� ���������� Middle ������������.*/
select count(salary.monthly_salary) from salary
join employee_salary on salary.id = employee_salary.id
join roles_employee on roles_employee.employee_id = employee_salary.id join roles on  roles.id = roles_employee.role_id
where roles.role_name like '%Middle%';

/* 27. ������� ���������� �������������*/
select count(salary.monthly_salary) from salary
join employee_salary on salary.id = employee_salary.id
join roles_employee on roles_employee.employee_id = employee_salary.id join roles on  roles.id = roles_employee.role_id
where roles.role_name like '%developer%';

/* 28. ������� ���� (�����) �������� �������������.*/
select sum(salary.monthly_salary) from salary
join employee_salary on salary.id = employee_salary.id
join roles_employee on roles_employee.employee_id = employee_salary.id join roles on  roles.id = roles_employee.role_id
where roles.role_name like '%developer%';

/* 29. ������� �����, ��������� � �� ���� ������������ �� �����������*/
select employees.employee_name, roles.role_name, salary.monthly_salary from employees
join employee_salary on employees.id = employee_salary.employee_id join salary on salary.id = employee_salary.id
join roles_employee on roles_employee.employee_id = employees.id join roles on  roles.id = roles_employee.role_id
order by salary.monthly_salary;

/* 30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300*/
select employees.employee_name, roles.role_name, salary.monthly_salary from employees
join employee_salary on employees.id = employee_salary.employee_id join salary on salary.id = employee_salary.id
join roles_employee on roles_employee.employee_id = employees.id join roles on  roles.id = roles_employee.role_id
where salary.monthly_salary > '1700' and salary.monthly_salary < '2300'
order by salary.monthly_salary;

/* 31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300*/
select employees.employee_name, roles.role_name, salary.monthly_salary from employees
join employee_salary on employees.id = employee_salary.employee_id join salary on salary.id = employee_salary.id
join roles_employee on roles_employee.employee_id = employees.id join roles on  roles.id = roles_employee.role_id
where salary.monthly_salary < '2300'
order by salary.monthly_salary;

/* 32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000*/
select employees.employee_name, roles.role_name, salary.monthly_salary from employees
join employee_salary on employees.id = employee_salary.employee_id join salary on salary.id = employee_salary.id
join roles_employee on roles_employee.employee_id = employees.id join roles on  roles.id = roles_employee.role_id
where salary.monthly_salary = '1100' or salary.monthly_salary = '1500' or salary.monthly_salary = '2000'
order by salary.monthly_salary;