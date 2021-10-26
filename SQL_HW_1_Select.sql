select * from students;

select distinct name from students;

select distinct id from students;

select distinct email from students;

select distinct name, email from students;

select distinct id, name, email, created_on from students;

select * from students where password = '12333';

select * from students where created_on = '2021-03-26 00:00:00';

select * from students where name = 'Анна';

select name from students where name like '%8';

select name from students where name like '%a%';

select * from students where created_on = '2021-07-12 00:00:00';

select * from students where created_on = '2021-07-12 00:00:00' and password = '1m313';

select * from students where created_on = '2021-07-12 00:00:00' and name like '%Andrey%';

select * from students where created_on = '2021-07-12 00:00:00' and name like '%8%';

select * from students where id = '10'

select * from students where id = '53';

select * from students where id > '40';

select * from students where id < '30';

select * from students where id < '27' or id > '88';

select * from students where id <= '37'

select * from students where id >= '37';

select * from students where id > '80' and id < '90';

select * from students where id between '80' and '90';

select * from students where password in ('12333', '1m313', '123313');

select * from students where created_on in ('2020-10-03 00:00:00', '2021-05-19 00:00:00', '2021-03-26 00:00:00');

select min (id) from students;

select max (id) from students;

select count(name) from students;

select id, name, created_on from students order by created_on;

select id, name, created_on from students order by created_on desc;


