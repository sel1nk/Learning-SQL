--Employee and Branch Tables
--David's branch is null because we do not have a branch(1).
INSERT INTO Employee VALUES(100, 'David', 'Wallace', '1967-11-17', 'M', 250000, NULL, NULL);
--We created branch(1) with manager id(100) which is David. David exists so no problem.
INSERT INTO Branch VALUES(1, 'Corporate', 100, '2006-02-09');
--update David's branch and set to 1.
UPDATE Employee 
SET branch_id = 1
WHERE emp_id = 100;
--Jan is in branch(1) also so this time directly place her.
INSERT INTO Employee VALUES(101, 'Jan', 'Levinson', '1961-11-17', 'F', 110000, 100, 1);

--let's do the same with Michael, but create branch(2) first.
INSERT INTO Branch VALUES(2, 'Scranton', NULL, '1992-04-06');
--now create Michael in branch(2)
INSERT INTO Employee VALUES(102, 'Michael', 'Scott', '1964-11-17', 'M', 75000, 100, 2);
--update branch(2) as the manager of it is Michael of 102.
UPDATE Branch
SET mgr_id = 102
WHERE branch_id = 2;

--These employees are in branch 2.
INSERT INTO Employee VALUES(103, 'Angela', 'Martin', '1971-11-17', 'F', 63000, 102, 2);
INSERT INTO Employee VALUES(104, 'Kelly', 'Kapoor', '1980-11-17', 'F', 55000, 102, 2);
INSERT INTO Employee VALUES(105, 'Stanley', 'Hudson', '1958-11-17', 'M', 69000, 102, 2);

--Let's create Josh as the manager of branch(3), which is non-existent.
INSERT INTO Employee VALUES(106, 'Josh', 'Porter', '1969-11-17', 'M', 78000, 100, NULL);
--create branch(3):
INSERT INTO Branch VALUES(3, 'Stamford', 106, '1998-02-13');
--update josh because he is in branch 3.
UPDATE Employee
SET branch_id = 3
WHERE emp_id = 106; 
--These employees will be in branch 3.
INSERT INTO Employee VALUES(107, 'Andy', 'Bernard', '1973-11-17', 'M', 65000, 106, NULL);
INSERT INTO Employee VALUES(108, 'Jim', 'Halpert', '1978-11-17', 'M', 71000, 106, NULL);
--This time update their branches as well because they are created as null:
UPDATE Employee
SET branch_id = 3
WHERE super_id = 106;

SELECT * FROM Employee;
SELECT * FROM Branch;

DELETE FROM Branch;
DELETE FROM Employee;