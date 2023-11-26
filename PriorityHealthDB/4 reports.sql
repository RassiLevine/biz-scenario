--1) The Hospital wants to recognize some of its members. Show the five newest employees and the two oldest employees.
select top 5 NewestEmployees = concat(FirstName, ' ', LastName)
from Staff s
order by s.DateHired desc

select top 2 OldestEmployees = concat(s.FirstName, ' ', s.LastName)
from Staff s
order by s.DateHired 
--2) Show the number of employees per position.
select EmployeesPerPosition = count(*), s.[Position]
from staff s 
group by s.[Position]
--3) Show how many years each employee is working here for. 
select Employee = concat(s.FirstName, ' ', s.LastName), YearsWorking = datediff(year, s.DateHired, getdate())
from staff s 