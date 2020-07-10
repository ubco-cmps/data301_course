--- I renames my EMP table and field names to be lower case
ALTER TABLE "EMP" RENAME TO "emp";


-- SELECT ---------------------------------------------

-- Try it: SQL SELECT and Projection

SELECT * FROM PROJ;
SELECT PNO FROM PROJ;
SELECT PNO, BUDGET FROM PROJ;

-- WHERE ---------------------------------------------

-- DON'T USE DOUBLE QUOTES IN LIBRE OFFICE BASE
SELECT * FROM PROJ WHERE DNO = 'D2'; 

-- to match the example from lecture:
UPDATE PROJ SET DNO='D2'  WHERE PNO='P5';

--- LibreOffice Case sensitive
SELECT ENO, ENAME, TITLE, SALARY FROM EMP
	WHERE ( SALARY > 35000 OR TITLE = 'PR' )
	
---- SELECT WITH IS NULL:
SELECT * FROM DEPT WHERE MGRENO IS NULL;
SELECT * FROM DEPT WHERE MGRENO IS NOT NULL;


SELECT * 
FROM 	 EMP
WHERE	 SALARY > 50000 OR TITLE ='PR'

-- Clicker questions:

-- Question 5.4
SELECT *
   FROM EMP
   WHERE TITLE = 'SA';

-- Question 5.5
SELECT *
   FROM EMP
   WHERE SALARY > 40000
	OR TITLE='PR';
	
-- Question 5.6
SELECT *
      FROM EMP
      WHERE SALARY >= 40000
AND ENAME > 'C';


-- Try it: SQL SELECT and Filterin Example 5.7

SELECT * FROM PROJ WHERE BUDGET > 250000;
SELECT PNO, PNAME FROM PROJ WHERE DNO = 'D1';
SELECT PNO, DNO FROM PROJ WHERE DNO = 'D1' or DNO = 'D2';
-- syntax error ... look at the or.........
SELECT PNO, DNO FROM PROJ WHERE DNO = 'D1' or 'D2';







------------ JOINS -------------------


SELECT * 
	FROM WORKSON INNER JOIN PROJ
		ON WORKSON.PNO = PROJ.PNO;



--- Let see the whole JOIN query first: Example 5.8
SELECT * 
	FROM EMP INNER JOIN DEPT
		ON EMP.DNO = DEPT.DNO;

SELECT *
	FROM EMP INNER JOIN DEPT 
		ON EMP.DNO = DEPT.DNO 
	WHERE DNAME = 'Management';


SELECT ENAME 
	FROM EMP INNER JOIN DEPT 
		ON EMP.DNO = DEPT.DNO 
	WHERE DNAME = 'Management';
	


------------- ORDER BY ---------------

SELECT ENAME, SALARY, BDATE
FROM EMP
WHERE SALARY > 30000
	ORDER BY 
		SALARY DESC, 
		ENAME ASC;
		
------------- LIMIT ------------------

SELECT ENAME, SALARY FROM EMP
ORDER BY SALARY DESC LIMIT 5;

SELECT ENAME, SALARY FROM EMP
ORDER BY SALARY DESC LIMIT 5 OFFSET 2;

-- IN ACCESS

SELECT TOP 5 ENAME, SALARY FROM EMP
ORDER BY SALARY DESC;

------------- Example 5.9 ------------------

----- (a)
SELECT * FROM PROJ
WHERE BUDGET < 500000 
ORDER BY BUDGET DESC;

----- (b) 
-- In Microsoft Access
SELECT TOP 5 ENAME, SALARY
FROM EMP ORDER BY SALARY DESC
--  In LibreOffice
SELECT ENAME, SALARY FROM EMP
ORDER BY SALARY DESC LIMIT 5;

----- (c)
SELECT * 
	FROM PROJ INNER JOIN DEPT
		ON PROJ.DNO = DEPT.DNO;

SELECT PNO, DNO, PNAME, DNAME 
	FROM PROJ INNER JOIN DEPT
		ON PROJ.DNO = DEPT.DNO
ORDER BY DNO ASC, PNO ASC;
		
SELECT PNO, PROJ.DNO, PNAME, DNAME 
	FROM PROJ INNER JOIN DEPT
		ON PROJ.DNO = DEPT.DNO
	WHERE DNAME > 'D'
ORDER BY DNO ASC, PNO ASC;

SELECT PNO, PROJ.DNO, PNAME, DNAME 
FROM PROJ 
INNER JOIN DEPT ON PROJ.DNO=DEPT.DNO 
WHERE DNAME > 'D' ORDER BY PROJ.DNO, PROJ.PNO;

-- Note:  will need a prefix 
-- (either PROJ or DEPT) on the DNO field.

--------------- DISTINCT --------------------

-- selects the DISTINCT salaries from emp
SELECT DISTINCT SALARY FROM EMP;

-- counts the distinct salaries from emp
SELECT COUNT(DISTINCT SALARY) FROM EMP;


-- EXAMPLE THAT COUNTS NULLS
SELECT COUNT(DNO) FROM EMP;
SELECT COUNT(*) FROM EMP;

--------------- AGGREGATE FUNCTION Example --------------------


SELECT 
--COUNT(ENO), AVG(SALARY) 
ENO, SALARY
FROM EMP;

SELECT COUNT(ENO), AVG(SALARY) 
FROM EMP;

SELECT COUNT(ENO) AS numEmp, AVG(SALARY) AS avgSalary
FROM EMP;


------ GROUP BY -------------------------------

SELECT 	
TITLE, ENO
--COUNT(ENO) AS numEmp
FROM 	 	EMP
--GROUP BY TITLE;

SELECT 	TITLE, COUNT(ENO) AS numEmp
FROM 	 	EMP
GROUP BY TITLE;

-- CAn run but not recommended (no context)
SELECT 	
COUNT(ENO) AS numEmp
FROM 	 	EMP
GROUP BY TITLE;

SELECT 	TITLE, SALARY, COUNT(ENO) AS numEmp
FROM 	 	EMP
GROUP BY TITLE, SALARY;

------ GROUP BY ex 2-------------------------------


SELECT 	TITLE, 
	ENO,
	SALARY
FROM 	 EMP
ORDER BY TITLE



SELECT 	TITLE, 
	COUNT(ENO) AS numEmp,
	MIN(SALARY) as minSal,
	MAX(SALARY) as maxSal, 
	AVG(SALARY) AS avgSal
FROM 	 EMP
GROUP BY TITLE

-- multiple attributes
select ENO, PNO, Count(*)
from WORKSON
Group by ENO, PNO;



-------- HAVING ---------------------

-- will filter out salary > 25000 before 
-- grouping and aggregate functions
SELECT 	TITLE, 
	COUNT(ENO) AS numEmp,
	MIN(SALARY) as minSal,
	MAX(SALARY) as maxSal, 
	AVG(SALARY) AS avgSal
FROM 	 EMP
WHERE SALARY >= 30000
GROUP BY TITLE

-- syntax error
-- cant call yet since WHERE is performed
-- before aggregate functions
SELECT 	TITLE, 
	COUNT(ENO) AS numEmp,
	MIN(SALARY) as minSal,
	MAX(SALARY) as maxSal, 
	AVG(SALARY) AS avgSal
FROM 	 EMP
WHERE AVG(SALARY) > 25000
GROUP BY TITLE


SELECT 	TITLE, 
	COUNT(ENO) AS numEmp,
	MIN(SALARY) as minSal,
	MAX(SALARY) as maxSal, 
	AVG(SALARY) AS avgSal
FROM 	 EMP
GROUP BY TITLE
HAVING AVG(SALARY) > 35000;



--- EXAMPLE 5.10
SELECT TITLE, SUM(SALARY) FROM EMP GROUP BY TITLE;


--- EXAMPLE 5.11

SELECT RESP, PNO, SUM(HOURS)
FROM WORKSON
WHERE HOURS>10
GROUP BY RESP, PNO;


-- TRY it: GROUP BY

-- 1)----------------------------------
-- since PNO is a primary key we can use this:
SELECT COUNT(*) FROM PROJ
-- but safer to use this:
SELECT COUNT(DISTINCT PNO) FROM PROJ;

-- 2) ----------------------------------
-- this should return one number 
SELECT SUM(BUDGET) AS totalBudget FROM PROJ

-- 3)----------------------------------
SELECT DNO, AVG(BUDGET) AS avgBudget FROM PROJ
GROUP BY DNO;

-- 4) ----------------------------------
SELECT PNO, SUM(HOURS) as totalHours 
	FROM WORKSON GROUP BY PNO;

-- Challenge: 

-- look at the join first;
SELECT  *
	FROM WORKSON JOIN PROJ 
	ON WORKSON.PNO=PROJ.PNO;

-- specify which PNO (ambiguous col_
SELECT  PNO, PNAME, SUM(HOURS) AS totalHours
	FROM WORKSON JOIN PROJ 
	ON WORKSON.PNO=PROJ.PNO
GROUP BY PNO, PNAME;

-- for access this will work (errors in LO)
-- SELECT Proj.PNO, PNAME, SUM(hours) as totalHours
--  FROM WorksOn INNER JOIN Proj on WorksOn.PNO=Proj.PNO 
--  GROUP BY Proj.PNO

-- 5)----------------------------------

-- first step: joing workson and PROJ
SELECT *
FROM WORKSON 
	INNER JOIN PROJ
		ON WORKSON.PNO = PROJ.PNO;

-- second step: join DEPT to above
SELECT *
FROM WORKSON 
	INNER JOIN PROJ
		ON WORKSON.PNO = PROJ.PNO
	INNER JOIN DEPT
		ON PROJ.DNO = DEPT.DNO;

		
-- extract the cols we want
SELECT DNAME, PNAME, SUM(HOURS) AS totalHours
FROM WORKSON 
	INNER JOIN PROJ
		ON WORKSON.PNO = PROJ.PNO
	INNER JOIN DEPT
		ON PROJ.DNO = DEPT.DNO
GROUP BY DNAME, PNAME;



-- for access:
SELECT 
	DNAME, 
	PNAME, 
	SUM(HOURS) AS totalHours, 
	COUNT(ENO) AS totalEmp 
FROM 
(WORKSON INNER JOIN PROJ ON WORKSON.PNO=PROJ.PNO) 
	INNER JOIN DEPT 
	ON PROJ.DNO=DEPT.DNO 
GROUP BY DNAME, PNAME



-- PUTITING IT ALL TOGETHER

SELECT PNAME, SUM(HOURS) as totalHours 
FROM 	 WORKSON 
	INNER JOIN PROJ 
		on WORKSON.PNO=PROJ.PNO
WHERE	 RESP='Manager'
GROUP BY PNAME;

-- add having

SELECT PNAME, SUM(HOURS) as totalHours 
FROM 	 WORKSON 
	INNER JOIN PROJ 
		on WORKSON.PNO=PROJ.PNO
WHERE	 RESP='Manager'
GROUP BY PNAME
HAVING SUM(HOURS) >30;
