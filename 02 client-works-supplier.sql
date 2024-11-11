--We have branches so no problem here.
INSERT INTO Client VALUES(400, 'Dunmore High', 2);
INSERT INTO Client VALUES(401, 'Lackawana Country', 2);
INSERT INTO Client VALUES(402, 'Fedex', 3);
INSERT INTO Client VALUES(403, 'John Daly', 3);
INSERT INTO Client VALUES(404, 'Scranton Whitepages', 2);
INSERT INTO Client VALUES(405, 'Times Newspaper', 3);
INSERT INTO Client VALUES(406, 'Fedex', 2);

UPDATE Client
SET client_name = 'John Daly Law, LLC'
WHERE client_id = 403;

--WORKS WITH
--We have the clients so no problem here
INSERT INTO Works_With VALUES(105, 400, 55000);
INSERT INTO Works_With VALUES(102, 401, 267000);
INSERT INTO Works_With VALUES(108, 402, 22500);
INSERT INTO Works_With VALUES(107, 403, 5000);
INSERT INTO Works_With VALUES(108, 403, 12000);
INSERT INTO Works_With VALUES(105, 404, 33000);
INSERT INTO Works_With VALUES(107, 405, 26000);
INSERT INTO Works_With VALUES(102, 406, 15000);
INSERT INTO Works_With VALUES(105, 406, 130000);

--Branch supplier
INSERT INTO Branch_Supplier VALUES(2, 'Hammer Mill', 'Paper');
INSERT INTO branch_supplier VALUES(2, 'Uni-ball', 'Writing Utensils');
INSERT INTO branch_supplier VALUES(3, 'Patriot Paper', 'Paper');
INSERT INTO branch_supplier VALUES(2, 'J.T. Forms & Labels', 'Custom Forms');
INSERT INTO branch_supplier VALUES(3, 'Uni-ball', 'Writing Utensils');
INSERT INTO branch_supplier VALUES(3, 'Hammer Mill', 'Paper');
INSERT INTO branch_supplier VALUES(3, 'Stamford Lables', 'Custom Forms');

UPDATE branch_supplier 
SET supplier_name = 'Stamford Labels'
WHERE supplier_name = 'Stamford Lables';
