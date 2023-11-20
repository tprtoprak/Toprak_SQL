SELECT * from EMPLOYEES;

--Adding new column
ALTER TABLE SCRUMTEAM_TOPRAK ADD SALARY Integer;

--Adding some values to null salary values
UPDATE SCRUMTEAM_TOPRAK SET SALARY = 100000 WHERE EMP_ID=2;
UPDATE SCRUMTEAM_TOPRAK SET SALARY = 200000 WHERE EMP_ID=1;
UPDATE SCRUMTEAM_TOPRAK SET SALARY = 90000 WHERE EMP_ID=4;
UPDATE SCRUMTEAM_TOPRAK SET SALARY = 120000 WHERE EMP_ID=3;

--Rename the column
ALTER TABLE SCRUMTEAM_TOPRAK RENAME COLUMN SALARY TO PRICES;

--Delete, Drop column
ALTER TABLE SCRUMTEAM_TOPRAK DROP COLUMN PRICES;

--Changing table name (Upper & Lower case is not important)
ALTER TABLE SCRUMTEAM_TOPRAK2 RENAME TO SCRUMteam_toprAk;

--Deleting all data from the table, but not deleting table
TRUNCATE TABLE SCRUMTEAM_TOPRAK;

--Deleting table from the database (Dont run below code not to delete the table from the database:)
DROP TABLE SCRUMTEAM_TOPRAK;



