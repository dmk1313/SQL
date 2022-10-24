/*1. Создать таблицу employees
- id. serial,  primary key,
- employee_name. Varchar(50), not null*/
create table employees (id serial primary key, employee_name varchar(50) not null);

/*2 Наполнить таблицу employee 70 строками.*/
insert into employees(employee_name)
values  ('employee_1'),
		('employee_2'),
		('employee_3'),
		('employee_4'),
		('employee_5'),
		('employee_6'),
		('employee_7'),
		('employee_8'),
		('employee_9'),
		('employee_10'),
		('employee_11'),
		('employee_12'),
		('employee_13'),
		('employee_14'),
		('employee_15'),
		('employee_16'),
		('employee_17'),
		('employee_18'),
		('employee_19'),
		('employee_20'),
		('employee_21'),
		('employee_22'),
		('employee_23'),
		('employee_24'),
		('employee_25'),
		('employee_26'),
		('employee_27'),
		('employee_28'),
		('employee_29'),
		('employee_30'),
		('employee_31'),
		('employee_32'),
		('employee_33'),
		('employee_34'),
		('employee_35'),
		('employee_36'),
		('employee_37'),
		('employee_38'),
		('employee_39'),
		('employee_40'),
		('employee_41'),
		('employee_42'),
		('employee_43'),
		('employee_44'),
		('employee_45'),
		('employee_46'),
		('employee_47'),
		('employee_48'),
		('employee_49'),
		('employee_50'),
		('employee_51'),
		('employee_52'),
		('employee_53'),
		('employee_54'),
		('employee_55'),
		('employee_56'),
		('employee_57'),
		('employee_58'),
		('employee_59'),
		('employee_60'),
		('employee_61'),
		('employee_62'),
		('employee_63'),
		('employee_64'),
		('employee_65'),
		('employee_66'),
		('employee_67'),
		('employee_68'),
		('employee_69'),
		('employee_70');

/*3. Создать таблицу salary
- id. Serial  primary key,
- monthly_salary. Int, not null*/	
create table salary (id serial primary key, monthly_salary int not null);

/*4. Наполнить таблицу salary 15 строками:- 1000 - 1100 - 1200 - 1300 - 1400 - 1500 - 1600 - 1700 - 1800 - 1900 - 2000 - 2100 
- 2200 - 2300 - 2400 - 2500*/
insert into salary(monthly_salary)
values  (1000),
		(1100)
		(1200),
		(1300),
		(1400),
		(1500),
		(1600),
		(1700),
		(1800),
		(1900),
		(2000),
		(2100),
		(2200),
		(2300),
		(2400),
		(2500);
	
insert into salary(monthly_salary)
values  (500);


/*5. Создать таблицу employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null*/
create table employee_salary(id serial primary key, employee_id int not null, salary_id int not null);

/*6. Наполнить таблицу employee_salary 40 строками:
- в 10 строк из 40 вставить несуществующие employee_id*/
insert into employee_salary (employee_id, salary_id)
values  (1,4),
		(2,6),
		(3,7),
		(4,9),
		(5,15),
		(6,14),
		(7,13),
		(8,12),
		(9,10),
		(10,11),
		(11,10),
		(12,11),
		(13,10),
		(14,1),
		(15,1),
		(16,2),
		(17,4),
		(18,5),
		(19,5),
		(20,6),
		(21,7),
		(22,8),
		(23,8),
		(24,9),
		(25,9),
		(26,2),
		(27,6),
		(28,7),
		(29,9),
		(30,9),
		(71,3),
		(72,1),
		(73,7),
		(74,8),
		(75,6),
		(76,7),
		(77,7),
		(78,6),
		(79,8),
		(80,9);

/*7. Создать таблицу roles
- id. Serial  primary key,
- role_name. int, not null, unique*/	
create table roles (id serial primary key, role_name int not null unique);

/*8. Поменять тип столба role_name с int на varchar(30)*/
alter table roles
alter column role_name type varchar(50) using role_name::varchar(50); 

/*9. Наполнить таблицу roles 20 строками:*/
insert into roles(role_name)
values  ('Junior Python developer'),
		('Middle Python developer'),
		('Senior Python developer'),
		('Junior Java developer'),
		('Middle Java developer'),
		('Senior Java developer'),
		('Junior JavaScript developer'),
		('Middle JavaScript developer'),
		('Senior JavaScript developer'),
		('Junior Manual QA engineer'),
		('Middle Manual QA engineer'),
		('Senior Manual QA engineer'),
		('Project Manager'),
		('Designer'),
		('HR'),
		('CEO'),
		('Sales manager'),
		('Junior Automation QA engineer'),
		('Middle Automation QA engineer'),
		('Senior Automation QA engineer');
/*10. Создать таблицу roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id)*/
create table roles_employee(id serial primary key, employee_id int not null unique, role_id int not null, 
foreign key(employee_id) references employees(id), foreign key(role_id) references roles(id));

/*11.Наполнить таблицу roles_employee 40 строками:*/
insert into roles_employee(employee_id, role_id)
values  (1, 1),
		(2, 2),
		(3, 3),
		(4, 4),
		(5, 5),
		(6, 6),
		(7, 7),
		(8, 8),
		(9, 9),
		(10, 10),
		(11, 11),
		(12, 12),
		(14, 13),
		(15, 14),
		(16, 15),
		(17, 16),
		(18, 17),
		(19, 18),
		(20, 19),
		(21, 20),
		(22, 19),
		(23, 18),
		(24, 17),
		(25, 16),
		(26, 15),
		(27, 14),
		(28, 13),
		(29, 12),
		(30, 11),
		(31, 10),
		(32, 9),
		(33, 8),
		(34, 7),
		(35, 6),
		(36, 5),
		(37, 4),
		(38, 3),
		(39, 2),
		(40, 1);
		
select * from roles_employee;



