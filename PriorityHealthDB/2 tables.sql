use PriorityHealthDB
go

drop table if exists Staff 
go

create table dbo.Staff(
    StaffId int not null identity primary key,
    FirstName varchar(30) not null constraint ck_Staff_FirstName_cannot_be_blank check(FirstName <> ''),
    LastName varchar(30) not null constraint ck_Staff_LastName_cannot_be_blank check(LastName <> ''),
    Shift char(2) not null constraint ck_Staff_Shift_must_be_either_am_or_pm check(Shift in ('AM', 'PM')),
    DateHired date not null constraint ck_Staff_DateHired_must_be_bettwen_january_of_2010_and_the_current_date check(DateHired between '2010-01-01' and getdate()),
    Position char(2) not null constraint ck_Staff_Position_must_be_either_DR_NP_or_PA check(Position in ('DR', 'NP', 'Pa'))
)
go