create user dwh identified by dwh
default tablespace users temporary tablespace temp
quota unlimited on users;

grant dba to dwh;

create table emp (
  eid      integer,
  name     varchar2(30),
  lastname varchar2(30),
  age      integer,
  salary   real
);


create table works (
  eid      integer,
  did      integer,
  pct_time integer
);


create table dept (
  did       integer,
  dname     varchar2(30),
  budget    real,
  managerid integer
);


--alter table emp add constraint pk_emp primary key (eid);
--alter table works add constraint pk_works primary key (eid, did);
--alter table dept add constraint pk_dept primary key (did);
--alter table works add constraint fk_works_emp foreign key (eid) references emp(eid);
--alter table works add constraint fk_wokrs_dept foreign key (did) references dept(did);
--alter table dept add constraint fk_dept_emp foreign key (managerid) references emp(eid);

INSERT INTO Emp(eid,Name,Lastname,salary) VALUES('123234877','Michael','Rogers',4000);
INSERT INTO Emp(eid,Name,Lastname,salary) VALUES('152934485','Anand','Manikutty',5000);
INSERT INTO Emp(eid,Name,Lastname,salary) VALUES('222364883','Carol','Smith',55000);
INSERT INTO Emp(eid,Name,Lastname,salary) VALUES('326587417','Joe','Stevens',6500);
INSERT INTO Emp(eid,Name,Lastname,salary) VALUES('332154719','Mary-Anne','Foster',4600);
INSERT INTO Emp(eid,Name,Lastname,salary) VALUES('332569843','George','ODonnell',8000);
INSERT INTO Emp(eid,Name,Lastname,salary) VALUES('546523478','John','Doe',7000);
INSERT INTO Emp(eid,Name,Lastname,salary) VALUES('631231482','David','Smith',5050);
INSERT INTO Emp(eid,Name,Lastname,salary) VALUES('654873219','Zacary','Efron',6400);
INSERT INTO Emp(eid,Name,Lastname,salary) VALUES('745685214','Eric','Goldsmith',5080);
INSERT INTO Emp(eid,Name,Lastname,salary) VALUES('845657245','Elizabeth','Doe',6400);
INSERT INTO Emp(eid,Name,Lastname,salary) VALUES('845657246','Kumar','Swamy',5800);

INSERT INTO Dept(did,Dname,Budget,Managerid) VALUES(14,'IT',65000,'123234877');
INSERT INTO Dept(did,Dname,Budget,Managerid) VALUES(37,'Accounting',15000,'222364883');
INSERT INTO Dept(did,Dname,Budget,Managerid) VALUES(59,'Human Resources',240000,'745685214');
INSERT INTO Dept(did,Dname,Budget,Managerid) VALUES(77,'Research',55000,'546523478');

INSERT INTO Works (eid, did, pct_time) VALUES ('123234877', 37, 0.20); 
INSERT INTO Works (eid, did, pct_time) VALUES ('123234877', 14, 0.20); 
INSERT INTO Works (eid, did, pct_time) VALUES ('123234877', 59, 0.20); 
INSERT INTO Works (eid, did, pct_time) VALUES ('123234877', 77, 0.90); 
INSERT INTO Works (eid, did, pct_time) VALUES ('152934485', 14, 0.10); 
INSERT INTO Works (eid, did, pct_time) VALUES ('152934485', 37, 1.00); 
INSERT INTO Works (eid, did, pct_time) VALUES ('222364883', 37, 1.00); 
INSERT INTO Works (eid, did, pct_time) VALUES ('326587417', 59, 1.00); 
INSERT INTO Works (eid, did, pct_time) VALUES ('332154719', 59, 1.00); 
INSERT INTO Works (eid, did, pct_time) VALUES ('332569843', 59, 0.60); 
INSERT INTO Works (eid, did, pct_time) VALUES ('546523478', 37, 0.40); 
INSERT INTO Works (eid, did, pct_time) VALUES ('631231482', 59, 0.60); 
INSERT INTO Works (eid, did, pct_time) VALUES ('654873219', 14, 0.40); 
INSERT INTO Works (eid, did, pct_time) VALUES ('745685214', 77, 0.70); 
INSERT INTO Works (eid, did, pct_time) VALUES ('845657245', 14, 0.30); 
INSERT INTO Works (eid, did, pct_time) VALUES ('845657246', 59, 0.50);

commit;


--*****************************************************************************************************************************--

a) Afficher les noms et âges de chaque employé qui travaille à la fois dans le département "IT" et le département "research".
SELECT name, age
b) Pour chaque département comptant plus de 20 employés et qui totalisent au moins autant d'employés à temps plein
employés), imprimez le did avec le nombre d'employés qui
travailler dans ce département.
c) Afficher le nom de chaque employé dont le salaire dépasse le budget de tous les départements dans lesquels il ou elle travaille.
d) Afficher les identifiants des managers qui gèrent uniquement les départements avec des budgets
supérieur à 100000 de dollars.
e) Afficher le nom du manager qui gère le département le plus important budget.
f) Si un manager gère plusieurs départements, il contrôle la somme
de tous les budgets de ces départements.
Trouver les managersids qui contrôlent plus de 5 millions de dollars.
g) Trouvez les managersids des managers qui contrôlent les plus gros montants.
h) Retrouver les noms des managers qui gèrent uniquement des départements avec des budgets
supérieur à 10000, mais au moins un département avec un budget inférieur à 20000.