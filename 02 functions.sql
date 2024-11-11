-- how many employees are there?
SELECT COUNT(emp_id) FROM Employee;

-- how many employees do supervisors have?
SELECT COUNT(super_id) FROM Employee;

-- women born after 1970
SELECT COUNT(emp_id)
FROM Employee
WHERE sex = "F" AND birth_date > "1970-01-01";

-- find average salary
SELECT AVG(salary)
FROM Employee 
WHERE sex = "M";

-- sum
SELECT SUM(salary)
FROM Employee;

-- finding men and women
SELECT COUNT(sex), sex
FROM Employee
GROUP BY sex;

-- find the total sales of each salesman
SELECT SUM(total_sales), emp_id
FROM Works_With GROUP BY emp_id;

-- find total money spent of clients
SELECT SUM(total_sales), client_id
FROM Works_With GROUP BY client_id;

--WILDCARDS (%for any number of characters,
--_ for one character)
-- find any client who are LLC
SELECT * FROM Client
-- ending with LLC -> % sign:
WHERE client_name LIKE '%LLC';

--find any branch suppliers who are in the label business
SELECT * FROM Branch_Supplier
-- something LABEL something -> & Label, ford LabelS
WHERE supplier_name LIKE '%Label%';

--find any employee born in November
SELECT * FROM Employee
-- or ____-11-% is also correct.
WHERE birth_date LIKE '____-11-__';

--find any clients who are high schools
SELECT * FROM Client
WHERE client_name LIKE '%High%';

