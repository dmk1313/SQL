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

/*5. Создать таблицу employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null*/
create table employee_salary(id serial primary key, employee_id int not null, salary_id int not null);

/*6. Наполнить таблицу employee_salary 40 строками:
- в 10 строк из 40 вставить несуществующие employee_id*/
insert into employee_salary (employee_id, salary_id)
values  (1,4),
		(3,6),
		(5,7),
		(2,9),
		(10,15),
		(11,14),
		(40,13),
		(19,12),
		(35,10),
		(36,11),
		(37,10),
		(38,11),
		(39,10),
		(41,1),
		(42,1),
		(43,2),
		(44,4),
		(45,5),
		(46,5),
		(47,6),
		(48,7),
		(49,8),
		(50,8),
		(51,9),
		(52,9),
		(53,2),
		(54,6),
		(55,7),
		(56,9),
		(57,20),
		(71,23),
		(72,21),
		(73,17),
		(74,18),
		(75,16),
		(76,17),
		(77,17),
		(78,16),
		(79,18),
		(80,19);

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
values  (39, 2),
		(20, 4),
		(3, 9),
		(5, 13),
		(23, 4),
		(11, 2),
		(10, 9),
		(22, 13),
		(21, 3),
		(34, 4),
		(6, 7),
		(35, 7),
		(37, 14),
		(36, 13),
		(30, 13),
		(38, 12),
		(29, 13),
		(28, 4),
		(27, 5),
		(26, 5),
		(25, 6),
		(1, 7),
		(2, 9),
		(4, 13),
		(8, 4),
		(9, 2),
		(12, 9),
		(13, 13),
		(14, 3),
		(15, 4),
		(16, 7),
		(17, 7),
		(18, 14),
		(19, 13),
		(24, 13),
		(40, 12),
		(31, 13),
		(32, 4),
		(33, 5),
		(41, 5);
		
select * from roles_employee;



