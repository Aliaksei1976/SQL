 --SQL HomeWork 2. Joins
 --1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
 
select e.employee_name, es.salary_id, s.monthly_salary from employees e 
inner join employee_salary es inner join salary s 
on es.salary_id = s.id
on es.employee_id = e.id;

--2. ������� ���� ���������� � ������� �� ������ 2000.

select e.employee_name, es.salary_id, s.monthly_salary from employees e 
inner join employee_salary es inner join salary s
on es.salary_id = s.id
on es.employee_id = e.id
where s.monthly_salary < 2000;

--3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������.
--(�� ����, �� �� ������� ��� � ��������.)

select e.employee_name, s.monthly_salary from employees e
right join employee_salary es inner join salary s
on es.salary_id = s.id
on es.employee_id = e.id
where e.employee_name is null;

--4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. 
--(�� ����, �� �� ������� ��� � ��������.)

select e.employee_name, s.monthly_salary from employees e
right join employee_salary es inner join salary s 
on es.salary_id = s.id
on es.employee_id = e.id
where e.employee_name is null and s.monthly_salary < 2000;

--5. ����� ���� ���������� ���� �� ��������� ��.

select e.employee_name, s.monthly_salary from employees e
left join employee_salary es inner join salary s 
on es.salary_id = s.id
on es.employee_id = e.id
where s.monthly_salary is null;

--6. ������� ���� ���������� � ���������� �� ���������.

select e.employee_name, r.role_name from employees e
right join roles_employee re inner join roles r
on re.role_id = r.id
on re.employee_id = e.id;

--7. ������� ����� � ��������� ������ Java �������������.

select e.employee_name, r.role_name from employees e
inner join roles_employee re inner join roles r
on re.role_id = r.id 
on re.employee_id = e.id where r.role_name like '%Java%';

--8. ������� ����� � ��������� ������ Python �������������.

select e.employee_name, r.role_name from employees e
inner join roles_employee re inner join roles r
on re.role_id = r.id
on re.employee_id = e.id where r.role_name like '%Python%';

--9. ������� ����� � ��������� ���� QA ���������.

select e.employee_name, r.role_name from employees e
inner join roles_employee re inner join roles r
on re.role_id = r.id
on re.employee_id = e.id where r.role_name like '%QA%';

--10. ������� ����� � ��������� ������ QA ���������.

select e.employee_name, r.role_name from employees e
inner join roles_employee re inner join roles r
on re.role_id = r.id
on re.employee_id = e.id where r.role_name like '%Manual%QA%';

--11. ������� ����� � ��������� ��������������� QA

select e.employee_name, r.role_name from employees e
inner join roles_employee re inner join roles r
on re.role_id = r.id 
on re.employee_id = e.id
where r.role_name like 'Automation_QA%';

--12. ������� ����� � �������� Junior ������������.

select r.role_name, e.employee_name, s.monthly_salary from salary s
inner join employee_salary es 
inner join employees e 
inner join roles_employee re 
inner join roles r
on re.role_id = r.id
on e.id = re.employee_id
on es.employee_id = e.id
on s.id = es.salary_id 
where r.role_name like '%Junior%';

--13. ������� ����� � �������� Middle ������������.

select r.role_name, e.employee_name, s.monthly_salary from salary s
inner join employee_salary es 
inner join employees e 
inner join roles_employee re 
inner join roles r
on re.role_id = r.id
on e.id = re.employee_id
on es.employee_id = e.id
on s.id = es.salary_id 
where r.role_name like '%Middle%';

--14. ������� ����� � �������� Senior ������������.

select r.role_name, e.employee_name, s.monthly_salary from salary s
inner join employee_salary es 
inner join employees e 
inner join roles_employee re 
inner join roles r
on re.role_id = r.id
on e.id = re.employee_id
on es.employee_id = e.id
on s.id = es.salary_id 
where r.role_name like '%Senior%';

--15. ������� �������� Java �������������.

select e.employee_name, s.monthly_salary, r.role_name from salary s
inner join employee_salary es 
inner join employees e 
inner join roles_employee re 
inner join roles r
on re.role_id = r.id
on e.id = re.employee_id
on es.employee_id = e.id
on s.id = es.salary_id 
where r.role_name like '%Java%';

--16. ������� �������� Python �������������

select s.monthly_salary, r.role_name from salary s
inner join employee_salary es 
inner join employees e 
inner join roles_employee re 
inner join roles r
on re.role_id = r.id
on e.id = re.employee_id
on es.employee_id = e.id
on s.id = es.salary_id 
where r.role_name like '%Python%';

--17. ������� ����� � �������� Junior Python �������������

select e.employee_name, s.monthly_salary, r.role_name from salary s
inner join employee_salary es
inner join employees e
inner join roles_employee re
inner join roles r
on re.role_id = r.id
on e.id = re.employee_id
on es.employee_id = e.id
on s.id = es.salary_id where r.role_name ='Junior Python developer';

--18. ������� ����� � �������� Middle JS �������������.

select r.role_name, e.employee_name, s.monthly_salary from salary s
inner join employee_salary es
inner join employees e
inner join roles_employee re
inner join roles r
on re.role_id = r.id
on e.id = re.employee_id
on es.employee_id = e.id
on s.id = es.salary_id
where r.role_name = '%Middle JavaScript developer%';

--19. ������� ����� � �������� Senior Java �������������

select r.role_name, e.employee_name, s.monthly_salary from salary s 
inner join employee_salary es 
inner join employees e 
inner join roles_employee re 
inner join roles r 
on re.role_id = r.id
on e.id = re.employee_id 
on es.employee_id =e.id 
on s.id = es.salary_id where r.role_name = 'Senior JavaScript developer'

--20. ������� �������� Junior QA ���������

select e.employee_name, s.monthly_salary from salary s
inner join employee_salary es 
inner join employees e 
inner join roles_employee re inner join roles r
on re.role_id = r.id
on e.id = re.employee_id
on es.employee_id = e.id
on s.id = es.salary_id where r.role_name = 'Junior Manual QA engineer';

--21. ������� ������� �������� ���� Junior ������������

select avg(s.monthly_salary) as salary_of_all_Juniors, r.role_name from salary s
inner join employee_salary es
inner join employees e 
inner join roles_employee re 
inner join roles r
on re.role_id = r.id
on e.id = re.employee_id
on es.employee_id = e.id
on s.id = es.salary_id where r.role_name like '%Junior%'
group by r.role_name
order by avg(s.monthly_salary) asc;

--22. ������� ����� ������� JS �������������

select sum(s.monthly_salary) as summa_all_JS, r.role_name from salary s
inner join employee_salary es 
inner join employees e 
inner join roles_employee re inner join roles r
on re.role_id = r.id
on e.id = re.employee_id
on es.employee_id = e.id
on s.id = es.salary_id where r.role_name like '%JavaScript_developer%'
group by r.role_name
order by sum(s.monthly_salary) asc;

--23. ������� ����������� �� QA ���������

select min(s.monthly_salary) as min_salary_of_all_QA, r.role_name from salary s
inner join employee_salary es 
inner join employees e 
inner join roles_employee re inner join roles r
on re.role_id = r.id
on e.id = re.employee_id
on es.employee_id = e.id
on s.id = es.salary_id where r.role_name like '%QA%'
group by r.role_name
order by min(s.monthly_salary) asc;

--24. ������� ������������ �� QA ���������

select max(s.monthly_salary) as max_salary_of_all_QA, r.role_name from salary s
inner join employee_salary es 
inner join employees e 
inner join roles_employee re 
inner join roles r
on re.role_id = r.id
on e.id = re.employee_id
on es.employee_id = e.id
on s.id = es.salary_id where r.role_name like '%QA%'
group by r.role_name
order by max(s.monthly_salary) asc;

--25. ������� ���������� QA ���������

select count(e.id) as count_of_QA, r.role_name from salary s
inner join employee_salary es 
inner join employees e 
inner join roles_employee re 
inner join roles r
on re.role_id = r.id
on e.id = re.employee_id
on es.employee_id = e.id
on s.id = es.salary_id where r.role_name like '%QA%'
group by r.role_name
order by count(e.id) asc;


--26. ������� ���������� Middle ������������.

select count(e.id) as count_of_middle, r.role_name from salary s
inner join employee_salary es
inner join employees e 
inner join roles_employee re
inner join roles r
on re.role_id = r.id
on e.id = re.employee_id
on es.employee_id = e.id
on s.id = es.salary_id where r.role_name like '%Middle%'
group by r.role_name
order by count(e.id) asc;

--27. ������� ���������� �������������

select count(e.id) as count_of_developers, r.role_name from salary s
inner join employee_salary es
inner join employees e 
inner join roles_employee re
inner join roles r
on re.role_id = r.id
on e.id = re.employee_id
on es.employee_id = e.id
on s.id = es.salary_id where r.role_name like '%developer%'
group by r.role_name
order by count(e.id) asc;

--28. ������� ���� (�����) �������� �������������.

select sum(s.monthly_salary) as sum_of_salary_developers, r.role_name from salary s
inner join employee_salary es
inner join employees e 
inner join roles_employee re
inner join roles r
on re.role_id = r.id
on e.id = re.employee_id
on es.employee_id = e.id
on s.id = es.salary_id where r.role_name like '%developer%'
group by r.role_name
order by sum(s.monthly_salary) asc;

--29. ������� �����, ��������� � �� ���� ������������ �� �����������

select e.employee_name, r.role_name, s.monthly_salary from salary s
inner join employee_salary es
inner join employees e 
inner join roles_employee re
inner join roles r
on re.role_id = r.id
on e.id = re.employee_id
on es.employee_id = e.id
on s.id = es.salary_id
order by s.monthly_salary asc;

--30. ������� �����, ��������� � �� ���� ������������ �� ����������� 
--� ������������ � ������� �� �� 1700 �� 2300
select e.employee_name, r.role_name, s.monthly_salary from salary s
inner join employee_salary es
inner join employees e 
inner join roles_employee re 
inner join roles r
on re.role_id = r.id
on e.id = re.employee_id
on es.employee_id = e.id
on s.id = es.salary_id where s.monthly_salary between 1700 and 2300
order by s.monthly_salary asc;

--31. ������� �����, ��������� � �� ���� ������������ �� ����������� 
--� ������������ � ������� �� ������ 2300

select e.employee_name, r.role_name, s.monthly_salary from salary s
inner join employee_salary es
inner join employees e 
inner join roles_employee re
inner join roles r
on re.role_id = r.id
on e.id = re.employee_id
on es.employee_id = e.id
on s.id = es.salary_id where s.monthly_salary < 2300
order by s.monthly_salary asc;

 --32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ 
 --� ������� �� ����� 1100, 1500, 2000

select e.employee_name, r.role_name, s.monthly_salary from salary s
inner join employee_salary es 
inner join employees e 
inner join roles_employee re
inner join roles r
on re.role_id = r.id
on e.id = re.employee_id
on es.employee_id = e.id
on s.id = es.salary_id where s.monthly_salary in (1100, 1500, 2000)
order by s.monthly_salary asc;

