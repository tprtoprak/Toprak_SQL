--Creating a table
CREATE TABLE ScrumTeam_toprak(
    Emp_ID Integer Primary Key,
    FirstName varchar(30) not null,
    LastName varchar(30),
    JobTitle varchar(20)
);

--Reading that table
SELECT * from SCRUMTEAM_TOPRAK;

--Adding some values
insert into SCRUMTEAM_TOPRAK (Emp_ID, FirstName, LastName, JobTitle)
VALUES (1,'Severus','Snape','Tester');

--This is the same with up
insert into SCRUMTEAM_TOPRAK
VALUES (4,'Toprak','TOPRAK','Tester');

--Changing some values
update SCRUMTEAM_TOPRAK
set EMP_ID = 45
where EMP_ID=4;

--Deleting some values
delete from SCRUMTEAM_TOPRAK
where EMP_ID=1;
