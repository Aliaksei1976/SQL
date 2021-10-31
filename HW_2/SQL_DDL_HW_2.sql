1. Создать таблицу employees
create table employees (id serial not null primary key,
employee_name varchar (50) not null);

2.Наполнить таблицу employee 70 строками
insert into employees (id, employee_name) values (default, 'petrov'), (default,'kozlov'),
(default, 'novikov'), (default, 'Morozov'), (default, 'volkov'),
(default, 'solovyev'), (default, 'vasiliev'), (default, 'zayscev'), (default, 'pavlov'),
(default, 'semenov'), (default, 'golubev'), (default, 'vinogradov'), (default, 'bogdanov'),
(default, 'vorobyov'), (default, 'fedorov'), (default, 'mikhailov'), (default, 'belyaev'),
(default, 'tarasov'), (default, 'Belov'), (default, 'Komarov'), (default, 'Orlov'),
(default, 'Kiselev'), (default, 'Makarov'), (default, 'Andreev'), (default, 'Kovalev'),
(default, 'Ilin'), (default, 'Gusev'), (default, 'Titov'), (default, 'Kuzmin'),
(default, 'Kudriavcev'), (default, 'Baranov'), (default, 'Kulikov'), (default, 'Alekseev'),
(default, 'Stepanov'), (default, 'Yakovlev'), (default, 'Sorokin'), (default, 'Sergeev'),
(default, 'Romanov'), (default, 'Zaharov'), (default, 'Borisov'), (default, 'Borisov'),
(default, 'Korolev'), (default, 'Gerasimov'), (default, 'Ponomarev'), (default, 'Grigoriev'),
(default, 'Lazarev'), (default, 'Medvedev'), (default, 'Ershov'), (default, 'Nikitin'),
(default, 'Sobolev'), (default, 'Riabov'), (default, 'Poliakov'), (default, 'Tsvetkov'),
(default, 'Danilov'), (default, 'Zukov'), (default, 'Frolov'), (default, 'Juravlev'),
(default, 'Nikolaev'), (default, 'Krylov'), (default, 'Maksimov'), (default, 'Sedov'),
(default, 'Osipov'), (default, 'Belousov'), (default, 'Fedotov'), (default, 'Dorofeev'),
(default, 'Ipolitov'), (default, 'Ziyatikov'), (default, 'Grechkin'), (default, 'Zuev'),
(default, 'Misnik');

select * from employees;

3. Создать таблицу 'salary'
create table salary (id serial not null primary key, monthly_salary INT not null);

4. Наполнить таблицу salary 15 строками.
insert into salary (id, monthly_salary) values (default, 1000), (default, 1100), (default, 1200), (default, 1300), (default, 1400),
(default, 1500), (default, 1600), (default, 1700), (default, 1800), (default, 1900),
(default, 2000), (default, 2100), (default, 2200), (default, 2300),
(default, 2400), (default, 2500);

select * from salary;

5. Создать таблицу employee_salary.
create table employee_salary (id serial not null primary key, employee_id Int not null unique,
salary_id Int not null);

6. Наполнить таблицу employee_salary 40 строками: в 10 строк из 40 вставить несуществующие employee_id

insert into employee_salary (id, employee_id, salary_id) values (default, 3, 7), (default, 1, 4),
(default, 5, 9), (default, 40, 13), (default, 23, 4), (default, 11, 2), (default, 52, 10),
(default, 15, 13), (default, 26, 4), (default, 16, 1), (default, 33, 7), (default, 100,99),
(default, 98, 97), (default, 96, 95), (default, 94, 93), (default, 92, 91), (default, 90, 89),
(default, 87, 88), (default, 86, 85), (default, 84, 83), (default, 82, 81), (default, 80, 79),
(default, 78, 77), (default, 76, 75), (default, 74, 73), (default, 72, 71), (default, 70, 69),
(default, 68, 67), (default, 66, 65), (default, 64, 63), (default, 62, 61), (default, 60, 59),
(default, 58, 57), (default, 56, 55), (default, 54, 53), (default, 51, 50), (default, 49, 48),
(default, 47, 46), (default, 45, 44), (default, 43, 41);

7. Создать таблицу roles.
create table roles (id serial not null primary key, role_name INT not null unique);

8. Поменять тип столба 'role_name' с 'int' на 'varchar(30)'
alter table roles alter column role_name type varchar(30);

9. Наполнить таблицу roles 20 строками
insert into roles (id, role_name) values (default, 'Junior Python developer'),
(default, 'Middle Python developer'), (default, 'Senior Python developer'),
(default, 'Junior Java developer'), (default, 'Middle Java developer'),
(default, 'Senior Java developer'), (default, 'Junior JavaScript developer'),
(default, 'Middle JavaScript developer'), (default, 'Senior JavaScript developer'),
(default, 'Junior Manual QA engineer'), (default, 'Middle Manual QA engineer'),
(default, 'Senior Manual QA engineer'), (default, 'Project Manager'), (default, 'Designer'),
(default, 'HR'), (default, 'CEO'), (default, 'Sales manager'), 
(default, 'Junior Automation QA engineer'), (default, 'Middle Automation QA engineer'),
(default, 'Senior Automation QA engineer');

10. Создать таблицу roles_employee (внешний ключ для таблицы employees, поле id).
-id. Serial  primary key,
-employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-role_id. Int, not null (внешний ключ для таблицы roles, поле id)

create table roles_employee (
id serial not null primary key,
employee_id Int not null unique,
role_id INT not null,
foreign key (employee_id)
references employees (id),
foreign key (role_id)
references roles (id));

select * from roles_employee;

11. Наполнить таблицу roles_employee 40 строками:
insert into roles_employee (id, employee_id, role_id) values 
(default, 7, 2), (default, 20, 4), (default, 3, 9), (default, 5, 13),
(default, 23, 4), (default, 11, 2), (default, 10, 9), (default, 22, 13),
(default, 21, 3), (default, 34, 4), (default, 6, 7), (default, 42, 10),
(default, 39, 4), (default, 37, 7), (default, 35, 8), (default, 33, 3),
(default, 31, 2), (default, 29, 7), (default, 27, 11), (default, 25, 14),
(default, 70, 4), (default, 8, 10), (default, 12, 13), (default, 14, 12),
(default, 18, 2), (default, 1, 7), (default, 17, 5), (default, 28, 8),
(default, 61, 13), (default, 60, 11), (default, 59, 10), (default, 57, 9),
(default, 51, 8), (default, 50, 7), (default, 49, 6), (default, 48, 5),
(default, 47, 4), (default, 46, 3), (default, 45, 2), (default, 44, 1);


















