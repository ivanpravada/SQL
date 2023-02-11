--1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select e.employee_name, s.monthly_salary from employees e 
join employee_salary es on e.id=es.employee_id 
join salary s on es.salary_id=s.id;

--2. Вывести всех работников у которых ЗП меньше 2000.
select e.employee_name, s.monthly_salary from employees e 
join employee_salary es on e.id=es.employee_id 
join salary s on es.salary_id=s.id
where s.monthly_salary<2000;

--3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select e.employee_name, s.monthly_salary from employees e 
full outer join employee_salary es on e.id=es.employee_id 
join salary s on es.salary_id=s.id
where e.employee_name is NULL;

--4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select e.employee_name, s.monthly_salary from employees e 
full outer join employee_salary es on e.id=es.employee_id 
join salary s on es.salary_id=s.id
where e.employee_name is null and s.monthly_salary<2000;

--5. Найти всех работников кому не начислена ЗП.
select e.employee_name, s.monthly_salary from employees e 
full outer join employee_salary es on e.id=es.employee_id 
full outer join salary s on es.salary_id=s.id
where s.monthly_salary is NULL;

--6. Вывести всех работников с названиями их должности.
select e.employee_name, r.role_name from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id ;

--7. Вывести имена и должность только Java разработчиков.
select e.employee_name, r.role_name from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
where r.role_name like '%Java%' and r.role_name not like '%JavaScript%';

--8. Вывести имена и должность только Python разработчиков.
select e.employee_name, r.role_name from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
where r.role_name like '%Python%' ;

--9. Вывести имена и должность всех QA инженеров.
select e.employee_name, r.role_name from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
where r.role_name like '%QA%' ;

--10. Вывести имена и должность ручных QA инженеров.
select e.employee_name, r.role_name from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
where r.role_name like '%Manual QA%' ;

--11. Вывести имена и должность автоматизаторов QA
select e.employee_name, r.role_name from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
where r.role_name like '%Automation QA%' ;

--12. Вывести имена и зарплаты Junior специалистов
select e.employee_name, s.monthly_salary from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
left join role_salary rs on r.id=rs.id_role 
left join salary s on rs.id_salary=s.id
where r.role_name like '%Junior%' ;

--13. Вывести имена и зарплаты Middle специалистов
select e.employee_name, s.monthly_salary from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
left join role_salary rs on r.id=rs.id_role 
left join salary s on rs.id_salary=s.id
where r.role_name like '%Middle%' ;

--14. Вывести имена и зарплаты Senior специалистов
select e.employee_name, s.monthly_salary from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
left join role_salary rs on r.id=rs.id_role 
left join salary s on rs.id_salary=s.id
where r.role_name like '%Senior%' ;

--15. Вывести зарплаты Java разработчиков
select e.employee_name, s.monthly_salary from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
left join role_salary rs on r.id=rs.id_role 
left join salary s on rs.id_salary=s.id
where r.role_name like '%Java%' and r.role_name not like '%JavaScript%' ;

-- 16. Вывести зарплаты Python разработчиков
select e.employee_name, s.monthly_salary from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
left join role_salary rs on r.id=rs.id_role 
left join salary s on rs.id_salary=s.id
where r.role_name like '%Python%' ;

--17. Вывести имена и зарплаты Junior Python разработчиков
select e.employee_name, s.monthly_salary from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
left join role_salary rs on r.id=rs.id_role 
left join salary s on rs.id_salary=s.id
where r.role_name like '%Python%Junior%' or r.role_name like '%Junior%Python%';

--18. Вывести имена и зарплаты Middle JS разработчиков
select e.employee_name, s.monthly_salary from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
left join role_salary rs on r.id=rs.id_role 
left join salary s on rs.id_salary=s.id
where r.role_name like '%JavaScript%Middle%' or r.role_name like '%Middle%JavaScript%';

--19. Вывести имена и зарплаты Senior Java разработчиков
select e.employee_name, s.monthly_salary from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
left join role_salary rs on r.id=rs.id_role 
left join salary s on rs.id_salary=s.id
where r.role_name like '%Java%Senior%' or r.role_name like '%Senior%Java%';

--20. Вывести зарплаты Junior QA инженеров
select e.employee_name, s.monthly_salary from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
left join role_salary rs on r.id=rs.id_role 
left join salary s on rs.id_salary=s.id
where r.role_name like '%QA%Junior%' or r.role_name like '%Junior%QA%';

--21. Вывести среднюю зарплату всех Junior специалистов
select avg(s.monthly_salary) as average_junior_salary from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
left join role_salary rs on r.id=rs.id_role 
left join salary s on rs.id_salary=s.id
where r.role_name like '%Junior%' ;

--22. Вывести сумму зарплат JS разработчиков
select sum(s.monthly_salary) as sum_JS_salary from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
left join role_salary rs on r.id=rs.id_role 
left join salary s on rs.id_salary=s.id
where r.role_name like '%JavaScript%' ;

--23. Вывести минимальную ЗП QA инженеров
select min(s.monthly_salary) as min_QA_salary from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
left join role_salary rs on r.id=rs.id_role 
left join salary s on rs.id_salary=s.id
where r.role_name like '%QA%' ;

--24. Вывести максимальную ЗП QA инженеров
select max(s.monthly_salary) as max_QA_salary from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
left join role_salary rs on r.id=rs.id_role 
left join salary s on rs.id_salary=s.id
where r.role_name like '%QA%' ;

--25. Вывести количество QA инженеров
select count(*) from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
where r.role_name like '%QA%' ;

--26. Вывести количество Middle специалистов.
select count(*) from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
where r.role_name like '%Middle%' ;

--27. Вывести количество разработчиков
select count(*) from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
where r.role_name like '%developer%' ;

--28. Вывести фонд (сумму) зарплаты разработчиков.
select sum(s.monthly_salary) from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
join role_salary rs on r.id=rs.id_role 
join salary s on rs.id_salary=s.id
;

--29. Вывести имена, должности и ЗП всех специалистов по возрастанию
select e.employee_name, r.role_name, s.monthly_salary from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
join role_salary rs on r.id=rs.id_role 
join salary s on rs.id_salary=s.id
order by s.monthly_salary;

--30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
select e.employee_name, r.role_name, s.monthly_salary from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
join role_salary rs on r.id=rs.id_role 
join salary s on rs.id_salary=s.id
where s.monthly_salary between 1700 and 2300
order by s.monthly_salary;

--31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
select e.employee_name, r.role_name, s.monthly_salary from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
join role_salary rs on r.id=rs.id_role 
join salary s on rs.id_salary=s.id
where s.monthly_salary < 2300
order by s.monthly_salary;

--32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
select e.employee_name, r.role_name, s.monthly_salary from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
join role_salary rs on r.id=rs.id_role 
join salary s on rs.id_salary=s.id
where s.monthly_salary in (1100, 1500, 2000)
order by s.monthly_salary;

select * from roles_employee rs ;
select * from employee_salary es ;
select * from roles r ;
select * from role_salary rs ;
select * from employees e ;