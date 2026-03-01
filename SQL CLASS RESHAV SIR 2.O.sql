CREATE TABLE customer
(
"ID" INT8 PRIMARY KEY,
"NAME" VARCHAR(50) NOT NULL,
"AGE" INT  NOT NULL,
"CITY" VARCHAR(50),
"SALARY" NUMERIC
);



SELECT  *FROM customer


insert into customer
("ID", "NAME", "AGE", "CITY", "SALARY")
VALUES
('3', 'Nand Kumar', '26', 'Punjab', 20500),
('4', 'Santosh', '39', 'Utter Pardash', 50000),
('5', 'Dhiru', '14', 'U.P', 10000);



-- UPDATE VALUES IN TABLE 

UPDATE customer
set "NAME"='Santosh Sharma', "AGE"=45
where "ID"=4;



DELETE FROM customer
where "ID"= 5;



---ALTER_TABLE---


ALTER TABLE customer
add Column Company_Name varchar(50);


ALTER TABLE customer
drop Column Company_Name;




-- Drop vs Trancatetable


-- all table is trancatable me 



--- SELECT STATEMENT...


SELECT * FROM CLASSE


CREATE TABLE classroom
(
"Roll_No" serial ,
"Student_Name" Varchar(50),
"House"  char(40),
"Grade" char(26)
);


insert into classroom
("Student_Name", "House", "Grade")
Values
('Nikki', 'Akash', 'B'),
('Mohan', 'Agni', 'A'),
('ROHAN', 'Jal', 'B'),
('Mohit', 'Agni', 'A'),
('Kamal', 'Yayu', 'B');

SELECT "Student_Name", "Grade" from classroom

select distinct "Grade" from classroom



---- WHERE CLAUSE...

SELECT * FROM Classroom

SELECT "Studnet_Name"
FROM classroom
where "Grade"= 'A';


SELECT "Student_Name"
FROM classroom
WHERE "Grade" = 'A';


----operators in sql..............

select * from classroom 
where 'Grade'= 'A' AND Roll_No>3


select * from classroom
