-- use bank;

-- 1.Вибрати усіх клієнтів, чиє ім'я має менше ніж 6 символів.

-- SELECT * FROM client WHERE length(FirstNAme) < 6;

-- 2.Вибрати львівські відділення банку.

-- SELECT * FROM department where DepartmentCity = "Lviv";

-- 3.Вибрати клієнтів з вищою освітою та посортувати по прізвищу.

-- select * from client where Education = 'high' order by LastName;

-- 4.Виконати сортування у зворотньому порядку над таблицею Заявка і вивести 5 останніх елементів.

-- select * from application order by idApplication desc limit 5;

-- 5.Вивести усіх клієнтів, чиє прізвище закінчується на OV чи OVA.

-- select * from client where LastName like'%ak' or LastName like '%iv';

-- 6.Вивести клієнтів банку, які обслуговуються київськими відділеннями.

-- select * from client c left join department d ON c.Department_idDepartment = d.idDepartment where d.DepartmentCity = 'Kyiv';

-- 7.Знайти унікальні імена клієнтів.

-- select distinct FirstName from client;

-- 8.Вивести дані про клієнтів, які мають кредит більше ніж на 5000 тисяч гривень.

-- select * from client c join application a ON c.idClient = a.Client_idClient where a.Sum > 5000;

-- 9.Порахувати кількість клієнтів усіх відділень та лише львівських відділень.

-- select count(idClient) from client;
-- select * from client c join department d ON c.Department_idDepartment = d.idDepartment where d.DepartmentCity = 'Lviv';

-- 10.Знайти кредити, які мають найбільшу суму для кожного клієнта окремо.

-- select Client_idClient, FirstName, LastName , Sum as MAX_SUM from application a join client c ON a.Client_idClient = c.idClient group by Client_idClient;

-- 11. Визначити кількість заявок на крдеит для кожного клієнта.

-- select Client_idClient, FirstName, LastName, count(Client_idClient) as "К-сть заявок" from application a join client c ON a.Client_idClient = c.idClient group by Client_idClient;

-- 12. Визначити найбільший та найменший кредити.

-- select max(Sum) as "Max credit", min(Sum) as "Min credit" from application;

-- 13. Порахувати кількість кредитів для клієнтів,які мають вищу освіту.

-- select Client_idClient, FirstName, LastName, Education, count(client_idClient) from application a join client c ON a.Client_idClient=c.idClient where c.Education= "high" group by Client_idClient;

-- 14. Вивести дані про клієнта, в якого середня сума кредитів найвища.

-- select idClient, FirstName, LastName, Passport, City, Age, sum(Sum) as "Сумма кредитів"
-- from client c
-- join application a
-- ON c.idClient = a.Client_idClient
-- group by Client_idClient
-- order by sum(Sum) desc
-- limit 1;

-- 15. Вивести відділення, яке видало в кредити найбільше грошей

-- select idDepartment, DepartmentCity, sum(Sum) as "Сумма кредитів"
-- from department d
-- join client c ON d.idDepartment= c.Department_idDepartment
-- join application a ON a.Client_idClient = c.idClient
-- group by idDepartment
-- order by sum(Sum) desc
-- limit 1;

-- 16. Вивести відділення, яке видало найбільший кредит.

-- select idDepartment, DepartmentCity, max(Sum) as "Сумма найбільшого кредиту"
-- from department d
-- join client c ON d.idDepartment = c.Department_idDepartment
-- join application a ON c.idClient= a.Client_idClient
-- group by idDepartment
-- order by max(Sum) desc
-- limit 1;

-- 17. Усім клієнтам, які мають вищу освіту, встановити усі їхні кредити у розмірі 6000 грн.

-- update client c
-- join application a ON  a.Client_idClient = c.idClient
-- set Sum = 7777
-- where Education = 'high';

-- 18. Усіх клієнтів київських відділень пересилити до Києва.

--  update client c
-- join department d ON c.Department_idDepartment = d.idDepartment
-- set City = 'Lviv'
-- where DepartmentCity = "Kyiv";

-- 19. Видалити усі кредити, які є повернені.



-- 20. Видалити кредити клієнтів, в яких друга літера прізвища є голосною.

-- 21.Знайти львівські відділення, які видали кредитів на загальну суму більше ніж 5000

-- 22.Знайти клієнтів, які повністю погасили кредити на суму більше ніж 5000

-- 23.Знайти максимальний неповернений кредит.

-- 24.Знайти клієнта, сума кредиту якого найменша

-- 25.Знайти кредити, сума яких більша за середнє значення усіх кредитів

-- 26. Знайти клієнтів, які є з того самого міста, що і клієнт, який взяв найбільшу кількість кредитів

-- 27. Місто клієнта з найбільшою кількістю кредитів
-- © 2021 GitHub, Inc.
-- Terms
-- Privacy
-- Security
-- Status
-- Docs
-- Contact GitHub
-- Pricing
-- API
-- Training
-- Blog
-- About
