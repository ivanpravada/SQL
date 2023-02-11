/*Создать таблицу employees
- id. serial,  primary key,
- employee_name. Varchar(50), not null*/
create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);

/*Создать таблицу salary
- id. Serial  primary key,
- monthly_salary. Int, not null*/
create table salary(
	id serial primary key,
	monthly_salary int not null
);

/*Создать таблицу employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null*/
create table employee_salary(
	id serial primary key,
	employee_id int unique not null,
	salary_id int not null
);

/*Создать таблицу roles
- id. Serial  primary key,
- role_name. int, not null, unique*/
create table roles(
	id serial primary key,
	role_name varchar(30) unique not null
);

/*Создать таблицу roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id)*/
create table roles_employee(
	id serial primary key,
	employee_id int unique not null,
	role_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id)
		references roles(id)
);

select sum(1) from salary;
SELECT CURRENT_TIME;

--Наполнить таблицу employee 70 строками.
insert into employees (employee_name)
values ('Reggie Batey'),
('Clara Poore'),
('Tammy Galindo'),
('Rickey Jones'),
('Jill Anspach'),
('Lacy Racicot'),
('David Macias'),
('Jessica Manns'),
('Amber Holcomb'),
('Betty Wells'),
('Miguel Fletcher'),
('Joseph Hodges'),
('Ida Bohannon'),
('Cindy Merrifield'),
('Mary Dowell'),
('Marie Thomas'),
('Donald Fierro'),
('Anna Wick'),
('Robert Harian'),
('Michael Mark'),
('Lucius Patterson'),
('Lorna Rose'),
('Karen Santiago'),
('Peggy Beachler'),
('Chester Baird'),
('Ronda Colley'),
('Robert Chapman'),
('Sandra Hibbard'),
('Steven Pagano'),
('Ramona Russell'),
('Ryan Morgan'),
('Shannon Daugherty'),
('Charlene Little'),
('Steve Lewandowski'),
('Donnie Shoemaker'),
('Veronica Treto'),
('Jonathon Belanger'),
('William Hughes'),
('Courtney Alston'),
('Isaac Walters'),
('Leon Ashcraft'),
('Daniel Patterson'),
('Randall Phillips'),
('James Williams'),
('Nancy Searles'),
('Edward Hilliard'),
('Joel Vandevelde'),
('Nancy Bravo'),
('Jesse Clark'),
('Gregory Magelssen'),
('Ella Cortez'),
('Michael Diaz'),
('Robert Walsh'),
('Valorie Seibert'),
('Yoshiko Miller'),
('Timothy Johnson'),
('Lita Webb'),
('Lindsay Barrera'),
('Jacqulyn Matthews'),
('Lee Rehart'),
('Fred Spencer'),
('Melinda Webster'),
('Shawn Pretti'),
('Betty Schaefer'),
('Barbara Teets'),
('Patricia Tomas'),
('Mattie Kelley'),
('Mary Yates'),
('Andrea Croes'),
('Amanda Riley');

--Наполнить таблицу salary 15 строками:
insert into salary (monthly_salary)
values 
	(1000),
	(1100),
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

/*Наполнить таблицу employee_salary 40 строками:
- в 10 строк из 40 вставить несуществующие employee_id*/
insert into employee_salary (employee_id, salary_id)
values (8, 8),
	(35, 1),
	(25, 1),
	(26, 1),
	(67, 11),
	(57, 5),
	(51, 11),
	(28, 13),
	(54, 14),
	(11, 14),
	(7, 1),
	(58, 10),
	(15, 4),
	(37, 14),
	(38, 9),
	(12, 13),
	(33, 4),
	(27, 4),
	(16, 6),
	(34, 7),
	(59, 1),
	(13, 4),
	(32, 10),
	(61, 5),
	(10, 10),
	(4, 2),
	(50, 3),
	(64, 1),
	(9, 9),
	(36, 8),
	(93, 15),
	(79, 8),
	(78, 6),
	(98, 1),
	(85, 12),
	(82, 14),
	(86, 9),
	(87, 7),
	(76, 11),
	(77, 3);
	
--Наполнить таблицу roles 20 строками:
insert into roles (role_name)
values 
	('Junior Python developer'),
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
	
--Наполнить таблицу roles_employee 40 строками:
insert into roles_employee (employee_id, role_id)
values 
	(69, 8),
	(70, 5),
	(53, 20),
	(5, 14),
	(8, 18),
	(19, 17),
	(7, 3),
	(36, 1),
	(22, 16),
	(25, 12),
	(59, 15),
	(12, 19),
	(64, 9),
	(63, 2),
	(4, 10),
	(1, 13),
	(51, 4),
	(20, 7),
	(9, 6),
	(52, 11);