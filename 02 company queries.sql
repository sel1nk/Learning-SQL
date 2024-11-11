SELECT * FROM Employee;
SELECT * FROM Branch;
SELECT * FROM Works_with;
SELECT * FROM Client;
SELECT * FROM Branch_Supplier;

SELECT * FROM Employee
ORDER BY salary DESC;

SELECT * FROM Employee
ORDER BY sex, first_name, last_name;

SELECT * FROM Employee
LIMIT 5;

SELECT Employee.first_name, Employee.last_name
FROM Employee;

SELECT first_name AS forename, last_name AS surname
FROM Employee;

SELECT DISTINCT sex FROM Employee;

SELECT DISTINCT branch_id FROM Employee;

