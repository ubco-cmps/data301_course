-- CREATE TABLE -------------------------------------------

-- create the "emp" table using the GUI

create table mydata (
  num int,
  message varchar(50),
  amount decimal(8,2)
 );
insert into mydata values (1, 'Hello', 99.45);
insert into mydata values (2, 'Goodbye', 55.99);
insert into mydata (num, message) values (3, 'No Amount');

-- INSERT DATA ---------------------------------------------
-- need not be in correct order



-- For Access:
INSERT INTO emp(eno, ename, bdate, title, salary, supereno)  VALUES 
	('E1','J. Doe','1975-01-05', 'EE',30000,'E2');
INSERT INTO emp VALUES 
('E2','M. Smith','1966-06-04', 'SA',50000,'E5','D3');
INSERT INTO emp VALUES 
('E3','A. Lee','1966-07-05', 'ME',40000,'E7','D2');
INSERT INTO emp VALUES 
('E4','J. Miller','1950-09-01', 'PR',20000,'E6','D3');
INSERT INTO emp VALUES 
('E5','B. Casey','1971-12-25', 'SA',50000,'E8','D3');
INSERT INTO emp VALUES 
('E6','L. Chu','1965-11-30', 'EE',30000,'E7','D2');
INSERT INTO emp VALUES 
('E7','R. Davis','1977-09-08', 'ME',40000,'E8','D1');
INSERT INTO emp(eno, ename, bdate, title, salary, dno)  VALUES 
	('E8','J. Jones','1972-10-11', 'SA',50000,'D1');
-- no quotes for numbers
INSERT INTO emp(ename, eno, salary) 
        VALUES ('S. Smith','E9',60000)
	
	
-- will only work with quotations in LibreOffice base (to preserve lowercase)
INSERT INTO "emp"("eno", "ename", "bdate", "title", "salary", "supereno")  VALUES 
	('E1','J. Doe','1975-01-05', 'EE',30000,'E2');
INSERT INTO "emp" VALUES 
('E2','M. Smith','1966-06-04', 'SA',50000,'E5','D3');
INSERT INTO "emp" VALUES 
('E3','A. Lee','1966-07-05', 'ME',40000,'E7','D2');
INSERT INTO "emp" VALUES 
('E4','J. Miller','1950-09-01', 'PR',20000,'E6','D3');
INSERT INTO "emp" VALUES 
('E5','B. Casey','1971-12-25', 'SA',50000,'E8','D3');
INSERT INTO "emp" VALUES 
('E6','L. Chu','1965-11-30', 'EE',30000,'E7','D2');
INSERT INTO "emp" VALUES 
('E7','R. Davis','1977-09-08', 'ME',40000,'E8','D1');
INSERT INTO "emp"("eno", "ename", "bdate", "title", "salary", "dno")  VALUES 
	('E8','J. Jones','1972-10-11', 'SA',50000,'D1');
INSERT INTO "emp" VALUES ('E9','S. Smith','1975-03-05', 
									'SA',60000,'E8','D1')

-- no quotes for numbers
INSERT INTO "emp"("ename", "eno", "salary") 
        VALUES ('S. Smith','E9',60000)


insert into mydata values (1, 'Hello', 99.45);
insert into mydata values (2, 'Goodbye', 55.99);
insert into mydata (num, message) values (3, 'No Amount');


-- UPDATE ---------------------------------------------

-- multiple rows single col
UPDATE emp SET salary = salary*1.10;
-- or in LibreOffice base:
UPDATE "emp" SET "salary" = "salary"*1.10;

-- single row multiple col
UPDATE emp SET salary = 1000000, ename='Rich Guy'
WHERE eno = 'E2';
-- LO Base:
UPDATE "emp" SET "salary" = 1000000, ename='Rich Guy'
WHERE eno = 'E2';


-- Try it: UPDATE

UPDATE mydata SET amount = 99.99;
UPDATE mydata SET num=10 WHERE num = 1;
UPDATE mydata SET message = 'Changed' WHERE num = 2;

-- ADDING ATTRIBUTES ---------------------------------------------

-- add the column "notes" to the "emp" table
ALTER TABLE emp ADD COLUMN notes VARCHAR(50);

-- add the column "notes" to the "emp" table
ALTER TABLE "emp" ADD COLUMN notes VARCHAR(50);
-- or just "ADD" instead of ADD COLUMN
ALTER TABLE "emp" ADD notes VARCHAR(50);



-- DELETE ---------------------------------------------


-- Example:
DELETE FROM emp WHERE salary > 35000
DELETE FROM "emp" WHERE "salary" > 35000


-- Try it: Delete

DELETE FROM mydata WHERE num = 10
DELETE FROM mydata WHERE message < 'C' --- Deletes nothing
DELETE FROM mydata WHERE message > 'D' --- Deletes 2 rows
DELETE FROM mydata --- deletes everything


-- SELECT ---------------------------------------------

-- Try it: SQL SELECT and Projection

SELECT * FROM proj --- LibreOffice Case sensitive 
SELECT * FROM Proj --- wont work!
SELECT pno FROM proj
SELECT pno, budget FROM proj

-- WHERE ---------------------------------------------

--- LibreOffice Case sensitive
SELECT ENO, ENAME, TITLE, SALARY FROM EMP
	WHERE ( SALARY > 35000 OR TITLE = 'PR' )
	
SELECT * 
FROM 	 EMP
WHERE	 SALARY > 50000 OR TITLE ='PR'

-- Try it: SQL SELECT and Filterin

SELECT * FROM proj WHERE budget > 250000
SELECT pno, pname FROM proj WHERE dno = 'D1'
SELECT pno, dno FROM proj WHERE dno = 'D1' or dno = 'D2'
-- syntax error ... look at the or.........
SELECT pno, dno FROM proj WHERE dno = 'D1' or 'D2'


