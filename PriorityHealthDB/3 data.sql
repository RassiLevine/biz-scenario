use PriorityHealthDB
go

delete Staff 
go

insert Staff(FirstName, LastName, Shift, DateHired, [Position])
select FirstName,
       LastName,
       case when TermStart - year(DateBorn) <= 65 then 'AM' else 'PM' end,
       datefromparts(case when right(LastName,1) like '%[A-J]%' then 2010 when right(LastName,1) like '%[K-S]%' then 2015 when right(LastName,1) like '%[T-Z]%' then 2020 end, month(DateBorn), day(DateBorn)),
--AS I added the case for a the current president who's term end is null since it crashes since all presidents have to have a position.
       case when TermEnd - TermStart = 4 then 'DR' when TermEnd - TermStart < 4 then 'NP' when TermEnd - TermStart > 4 or TermEnd is null then 'PA' end
from RecordKeeperDB.dbo.president 


