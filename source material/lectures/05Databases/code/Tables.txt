-- CREATE emp TABLE -------------------------------------------

create table emp (
	eno char(5),
	ename varchar(30) NOT NULL,
	bdate date,
	title char(2),
	salary decimal(9,2),
	supereno char(5),
	dno char(5),
	PRIMARY KEY (eno) 
);

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




-- CREATE proj TABLE -------------------------------------------

create table proj (
	pno char(5),
	pname varchar(30) NOT NULL,
	budget decimal(9,2),
	dno char(5),
	PRIMARY KEY (pno) 
);

INSERT INTO proj VALUES 
('P1','Instruments',150000,'D1');
INSERT INTO proj VALUES 
('P2','DB Develop',135000,'D2');
INSERT INTO proj VALUES 
('P3','Budget',250000,'D3');
INSERT INTO proj VALUES 
('P4','Maintenance',310000,'D2');
INSERT INTO proj VALUES 
('P5','CAD/CAM',500000,'D1');




-- CREATE dept TABLE -------------------------------------------

create table dept (
	dno char(5),
	dname varchar(30) NOT NULL,
	mgreno char(5),
	PRIMARY KEY (dno) 
);

INSERT INTO dept VALUES 
('D1','Management','E8');
INSERT INTO dept VALUES 
('D2','Consulting','E7');
INSERT INTO dept VALUES 
('D3','Accounting','E5');
INSERT INTO dept(dno, dname) VALUES 
('D4','Development');




-- CREATE WORKSON TABLE -------------------------------------------

create table workson (
	eno char(5),
	pno char(5),
	resp varchar(30),
	hours integer,
	PRIMARY KEY (eno, pno) 
);

INSERT INTO workson VALUES 
('E1', 'P1','Management',12);
INSERT INTO workson VALUES 
('E2', 'P1','Analyst',24);
INSERT INTO workson VALUES 
('E2', 'P2','Analyst',6);
INSERT INTO workson VALUES 
('E3', 'P3','Consultant',10);
INSERT INTO workson VALUES 
('E3', 'P4','Engineer',48);
INSERT INTO workson VALUES 
('E4', 'P2','Programmer',18);
INSERT INTO workson VALUES 
('E5', 'P2','Manager',24);
INSERT INTO workson VALUES 
('E6', 'P4','Manager',48);
INSERT INTO workson VALUES 
('E7', 'P3','Engineer',36);



