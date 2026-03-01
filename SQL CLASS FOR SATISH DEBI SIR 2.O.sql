Create Table employee
(
 Employee_Id serial PRIMARY KEY,
 Emp_Name varchar(100) NOT NULL,
 Postion varchar(100),
 Deparment varchar(100),
 Hire_date  date,
 Salary Numeric(10,2)
);


select * from employee

-- -INSERT COMMOND...


INSERT INTO employee
(emp_name, Postion, Deparment, hire_date, Salary)
VALUES
	('Rohit', 'Data Analyst' ,'Data Science', '2025-05-2', 65000.00),
	('Ajit Das', 'Software Engineer', 'IT', '2025-09-7', 75000.00),
	('Mohan Sharma', 'HR Manger' ,'Human Resources', '2025-01-17', 82000.00),
	('Nand Mandal', 'Sales Excutive', 'Sales', '2025-03-7', 62000.00);


select * from employee

--- COOMAN ALTER COOMAND...


ALTER  Table employee 
Rename  potion to postion;


Truncate table employee;    ---remove all data in Sql Table


Truncate Table employee Restart Identity;


--- DAY 5 DELETING ROWS AND COLUMN FROM TABLE





CREATE TABLE employee2
( 
employee_id INT PRIMARY KEY,
emp_name VARCHAR(50) NOT NULL,
postion VARCHAR(40),
department VARCHAR(50),
hire_date Date,
Salary Numeric(10,2)
);



select * from employee2

INSERT INTO employee2
(employee_id ,emp_name, Postion, department, hire_date, Salary)
VALUES
('001','Rohit', 'Data Analyst' ,'Data Science', '2025-05-2',65000.00),
('002','Ajit Das', 'Software Engineer', 'IT', '2025-09-7',75000.00),
('003','Mohan Sharma', 'HR Manger' ,'Human Resources', '2025-01-17',82000.00),
('004','Nand Mandal', 'Sales Excutive', 'Sales', '2025-03-7', 62000.00);


DELETE FROM employee2
where department='Sales';  ----Row DELETE COOMAND



ALTER TABLE employee2      ----- column delect 
drop column Salary;



-- DAY 6 FOR DATA TYPE AND CONSTRAINS IN SQL



CREATE TABLE students
(
student_id serial PRIMARY KEY,
Student_name varchar(50) NOT NULL,
email varchar(100)UNIQUE,
age INTEGER CHECK (age>=18),
reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


SELECT * from students





insert into students
(student_name, email, age)
values
('Arvind Sharma', 'codewitharvind@gmail.com', 22),
('Shubham', 'shubhamkummdb7@gmail.com', 25);

-- DAY 7:- Update data in Sql

CREATE TABLE users
(
user_id SERIAL PRIMARY KEY,
username VARCHAR(50) NOT NULL,
email VARCHAR(50)NOT NULL,
age INT,
city VARCHAR(50)
);


SELECT * FROM users


INSERT INTO users
(username, email, age, city)
VALUES
('Rohit', 'rohitku898@gmail.com', 25, 'Mumbai'),
('Santosh', 'santoshmdb8@gmail.com', 20, 'Delhi'),
('Nikki', 'nikkiku232@gmail.com', 20, 'Bangalore'),
('Priya', 'priyamdew23@gmail.com', 23, 'Pune'),
('chandan', 'chandane2898@gmail.com', 30, 'Hydrabad');



SELECT  username, city FROM users

SELECT
	*
FROM
	USERS
ORDER BY
	USER_ID ASC;


UPDATE users
SET age=21
Where user_id=3;



UPDATE users
SET city='bihar'
WHERE age>=30;


UPDATE users
SET age= 31, city='kolkata'
WHERE username='chandan';

UPDATE users
SET age=age+1
Where age<25;



-- DAY 8 :- Update data in sql With Toolbar





select * from users
order by user_id asc;

UPDATE users
SET city='Hyderabad'
Where user_id=4;


DELETE FROM users
where user_id=7;



-- DAY 9 :- QUERY Toolbar in Sql


-- EDIT HOTA HAIi



-- DAY 10:- ALTER COLUMN IN SQL


--- TO RENAME THE username cloumn to Full_Name...

ALTER TABLE users
Rename column username to full_name ;

select * from users
order by user_id  asc;


--- to  change age cloumn data type int to smallint 

ALTER TABLE users
ALTER column age TYPE smallint;


-- TO ad a not null CONTRINT TO CITY COLUMN


ALTER TABLE users
ALTER column City SET NOT NULL;




-- ADDING CHECK CONSTRAINT TO AGE COLUMN..age

ALTER TABLE users
ADD CONSTRAINT age CHECK(age>=18);


SELECT * FROM users
order by user_id asc;



INSERT INTO users 
(full_name, email, age, city)
VALUES
('Vinod', 'vinodkue232@gmail.com', 18, 'Pune');


ALTER TABLE users 
rename to customers;






-- DAY 11 ASSIGMENT....

CREATE TABLE employees
(
employee_id SERIAL PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
deparment VARCHAR(50),
salary DECIMAL(10,2) CHECK(salary >0),
jonning_date DATE NOT NULL,
age int CHECK (age>=18)
);



select * from employees


INSERT INTO employees
(first_name, last_name, deparment, salary, jonning_date, age)
values
('Amit', 'Sharma', 'IT', 60000.00, '12-10-2022', 29),
('Neha', 'Patal', 'HR', 55000.00, '7-4-2021', 32),
('Ravi', 'Kumar', 'Finance', 70000.00, '15-2-2020', 35),
('Anjali', 'Verma', 'IT', 65000.00, '12-10-2022', 28),
('Suresh', 'Reddy', 'Operations', 50000.00, '12-10-2023', 26);

ALTER TABLE employees
rename deparment to department;



-- Assignment Questions
--Q1: Retrieve all employees’ first_name and their departments.


SELECT first_name, deparment from employees

--Q2: Update the salary of all employees in the 'IT' department by increasing it by 10%.

update employees
SET salary=salary+(salary*0.1)
where department ='IT';

select * from employees

UPDATE employees
SET salary =salary+(salary*0.2)
where department ='Finance';

--Q3: Delete all employees who are older than 34 years.

DELETE from employees 
where age>34;




--Q4: Add a new column `email` to the `employees` table.


ALTER TABLE employees
ADD COLUMN email varchar(100);


select * from employees




--Q5: Rename the `department` column to `dept_name`.

ALTER TABLE employees
Rename department to Dept_name;


--Q6: Retrieve the names of employees who joined after January 1, 2021.


select first_name, jonning_date from employees
where jonning_date >'1-1-2021';



select * from employees
order by employee_id asc;

--Q7: Change the data type of the `salary` column to `INTEGER`


ALTER TABLE employees
ALTER COLUMN salary type INTEGER USING salary:: INTEGER;




--Q8: List all employees with their age and salary in descending order of salary.



SELECT first_name, last_name, salary, age  FROM employees
order by salary desc;



--Q9: Insert a new employee with the following details: 
		-- ('Raj', 'Singh', 'Marketing', 60000, '2023-09-15', 30)
insert into employees
("first_name", "last_name", "dept_name", "salary", "jonning_date" ,"age")
VALUES
('Raj', 'Singh', 'Marketing', 60000, '2023-09-15', 30);




SELECT * FROM employees



--Q10: Update age of employee +1 to every employee 


update employees
Set age=age +1;

select * from employees







UPDATE employees
SET email= 'nehaku773@gmail.com' 
where employee_id =2;


UPDATE employees
SET email = 'amit.sharma@example.com'
WHERE employee_id = 1;




ALTER TABLE employees
DROP COLUMN City VARCHAR(50);

al

UPDATE employees
SET city = 'Mumbai'
WHERE employee_id= 1;



ALTER TABLE employees
DROP COLUMN City;












-- DAY -12 ...IMPOART CSV FILE IMPORT



select * from employees





CREATE TABLE emp
(
employee_id INT PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
department VARCHAR(40),
salary NUMERIC(10,2),
joining_date DATE,
age INT
);


SELECT * FROM emp



COPY 
emp(employee_id, first_name, last_name,	department,	salary,	joining_date, age)
FROM 'D:\employee_data2.csv'
DELIMITER','
CSV HEADER;












CREATE TABLE uber 
(
Date  DATE,
Time  TIME,
Booking_ID  NUMERIC,
Booking_Status  VARCHAR(100) NOT NULL,
Customer_ID  INT PRIMARY KEY,
Vehicle_Type  VARCHAR(50) NOT NULL,
Pickup_Location VARCHAR (70) NOT NULL,
Drop_Location VARCHAR(90) NOT NULL,
AvgVTAT INT,
AvgCTAT INT,
Cancelled_Rides_by_Customer INT,
Reason_for_cancelling_by_Customer INT,
Cancelled_Rides_by_Driver INT,
Reason_for_cancelling_by_Driver INT,
Incomplete_Rides INT,
Incomplete_Rides_Reason  INT,
Booking_Value INT,
Payment_Method  VARCHAR(50),
Ride_Distance INT,
Driver_Ratings INT ,
Customer_Rating  INT
);


SELECT * from uber



COPY (Date,	Time,	Booking_ID,	Booking_Status,	Customer_ID, Vehicle_Type, Pickup_Location,	Drop_Location,	AvgVTAT, AvgCTAT, Cancelled_Rides_by_Customer,	Reason_for_cancelling_by_Customer	Cancelled Rides by Driver	Reason for cancelling by Driver	Incomplete Rides	Incomplete Rides Reason	Booking Value	Payment Method	Ride Distance	Driver Ratings	Customer Rating
)



-- DAY -13 ...IMPOART CSV FILE IMPORT ADAVANCE..



SELECT * FROM EMP;


CREATE TABLE emp2
(
employee_id INT PRIMARY KEY,
first_name  VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
email varchar(50),
department VARCHAR(50),
salary NUMERIC,
joining_date DATE,
age INT
);




SELECT * FROM emp2

DROP TABLE IF EXISTS emp3;



ALTER TABLE emp2
add column email varchar(50);



DROP TABLE emp2;



-- DAY :- 14 TYPE OF OPERATORS IN SQL 




SELECT * FROM employee


ALTER TABLE employee
Drop Column email;




select * from emp

SELECT first_name, salary,
          (salary*0.10) as BONUS
FROM emp;



select first_name, last_name, salary,
       (salary+12) as Annual_salary,
	   (salary*0.05) as Increment_salary,
	   (salary+ salary*0.05) as New_salary
FROM emp;





select first_name, last_name, salary,
         (salary*12) as annual_salary,
		 (salary*0.10) as increment_salary,
		 (salary+ salary*0.10) as new_salary

from emp;






-- DAY 15 IN COMPARISON OPERATORS

---march age 30

SELECT * FROM emp
WHERE age=30;





SELECT * FROM emp
WHERE age<=30;



select first_name, salary from emp
where salary>50000;



-- DAY 16 IN LOGICAL OPERATORS 
----USING AND OPERATORS
SELECT * FROM emp
where age>=40 AND salary>=50000;




select * from emp
where department>='IT' AND 'first_name';
 




----USING OR OPERATORS


select * from emp
where age>=40 OR salary>=90000;




----USING NOT OPERATORS

select first_name, last-name, salary, from emp
where NOT(department='IT');




-- DAY :- BETWEEN LIKE AND IN OPERATORS



-- 1) Retrieve employees whose salary is between 40,000 and 60,000. - Use BETWEEN Operators





select first_name, last_name, salary
from emp
where salary BETWEEN 40000 AND 60000;



-- 2) Find employees whose email addresses end with outlook.com - Use LIKE Operators


select * from students


insert into students
(student_id, student_name, email, age)
values
(2, 'Nikki Mandal', 'nikishku@outlook.com', 21 );

select * from students
where email like '%@outlook.com';




select first_name from emp
where first_name like 'A%';





-- 3) Retrieve employees who belong to either the 'Finance' or 'Marketing' departments-- Use IN Operator


select first_name, last_name, department, salary from emp
where department IN ('Marketing', 'Finance', 'IT')
order by salary desc;



-- DAY :- 18 IN NULL OPERATORS, ORDER BY OPERATORS, LIMIT OPERATORS, DISTINCT OPERATORS



SELECT * FROM employees

---01 Find employee where the email column is null (if applicable)


SELECT * FROM employees




---02 list employeee sorted by slary in desceding order



select first_name , last_name, salary, department from emp
order by salary desc;



---03  Retrieve the top 5 highest-paid employees


select  first_name, last_name , salary from emp
order by salary desc
limit 5;





---04 retrieve a list of unique department

select distinct department from emp;




select count( distinct age)from emp





---DAY 19:- SET OPERATORS..




CREATE TABLE student_2025
(
student_id INT PRIMARY KEY,
studnet_name VARCHAR(50),
course VARCHAR(50)
);




INSERT INTO student_2025
(student_id, student_name, course)
VALUES
(1, 'Aarav Sharma', 'Computer_Science'),
(2, 'Nikki Mandal', 'Mechanical Enginnering'),
(3, 'Kabir Patel', 'Electronics'),
(4, 'Ananya Desai', 'Civil Enginnering'),
(5, 'Rahul Gupta', 'Computer Science');


ALTER TABLE student_2025
RENAME studnet_name TO student_name;



select * from student_2025




CREATE TABLE student_2026
(
student_id INT PRIMARY KEY,
student_name VARCHAR(50),
Course CHAR(50)
);



INSERT INTO student_2026
(student_id, student_name, Course)
VALUES
(3, 'Kabir Patel', 'Electronics'),
(4, 'Ananya Desai', 'Civil Enginnering'),
(6, 'Meera Rao', 'Computer Science'),
(7, 'Vikram Singh', 'Mathematics'),
(8, 'Shubham Mandal', 'Physics');






select * from student_2025

select * from student_2026





---01 UNION  COMBINES RESULTS REMOVES DUPLICATES

select student_name, course 
FROM student_2025
UNION 
SELECT student_name, course
FROM student_2026;





---02 UNION  COMBINES RESULTS KEEP DUPLICATES

select student_name, course 
FROM student_2025
UNION ALL
SELECT student_name, course
FROM student_2026;








select student_name, course 
FROM student_2025
INTERSECT
SELECT student_name, course
FROM student_2026;





select student_name, course 
FROM student_2025
EXCEPT
SELECT student_name, course
FROM student_2026;







-- DAY 20.. FUNCATIONS ...

CREATE TABLE product 
product_d











DROP TABLE IF EXISTS products;
CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price NUMERIC(10, 2),
    quantity INT,
    added_date DATE,
    discount_rate NUMERIC(5, 2)
);

INSERT INTO products (product_name, category, price, quantity, added_date, discount_rate) VALUES
('Laptop', 'Electronics', 75000.50, 10, '2024-01-15', 10.00),
('Smartphone', 'Electronics', 45000.99, 25, '2024-02-20', 5.00),
('Headphones', 'Accessories', 1500.75, 50, '2024-03-05', 15.00),
('Office Chair', 'Furniture', 5500.00, 20, '2023-12-01', 20.00),
('Desk', 'Furniture', 8000.00, 15, '2023-11-20', 12.00),
('Monitor', 'Electronics', 12000.00, 8, '2024-01-10', 8.00),
('Printer', 'Electronics', 9500.50, 5, '2024-02-01', 7.50),
('Mouse', 'Accessories', 750.00, 40, '2024-03-18', 10.00),
('Keyboard', 'Accessories', 1250.00, 35, '2024-03-18', 10.00),
('Tablet', 'Electronics', 30000.00, 12, '2024-02-28', 5.00);


SELECT * FROM products;

-- Total Quantity Available of all products






SELECT SUM(quantity) AS quantity_of_ele
FROM products
WHERE category='Electronics' AND price > 20000 ;

-- Total number of products
select * from products

select sum(quantity) as total_quantity
from products


select * from products

-- select (category) as Total_Electronics
-- from products
-- where sum(Electronics) as total_sum;



select sum(quantity) as Quantity_ele
from products
where category='Electronics'  and price >20000;



----total number products;


select count(*) as total_products
from products




select sum(price ) as Sell_Products_Laptop
from products
where product_name = 'Laptop';




select * from products





select count(*) as total_products
from products
where product_name like '%phone%'



--- average price 

select avg(price) from products



select avg(price) from products
where category = 'Electronics' or added_date >'2024-02-01;'



---- max 


select max (price) from products



select min (price) from products



-- DAY-21 STRING FUNCATIONS IN SQL 



SELECT * FROM products




---get all the categories in UPPERCASE



SELECT UPPER(category ) as catergory_capital
from products




---get all the categories in loowercase



SELECT lower(category ) as catergory_capital
from products



---- join product name name and category with hypen.



SELECT concat(product_name , '-', category ) as product_details
from products



-----extract the first_5 characters from product_name 


select SUBSTRING(product_name, 1,10) as sub
from products




----count lenght


select product_name,  LEnGTH(product_name) as count_as
from products



----remove the leding and tralig spces fro string


select length(trim('  Printer  ') as as_trim_tax






----replace the "phone " with "device" in product_name 



select replace(product_name, 'phone', 'device')as replase 
from products













SELECT left (category,3 ) as catergory_capital
from products



-- DAY 22 DATE AND TIME FUNCATIONS PART 01.....

-- 1 NOW() - GET CURRENT DATE AND TIME FUNCATION


SELECT * FROM NOW() AS CURRENT_DEATETIME_INDAI;

SELECT added_date,(NOW()- added_date)as now_time
from products;




---2 CURRENT_DATE -- GET CURRENT DATE 

SELECT * FROM CURRENT_DATE AS TODAY_DATE

SELECT added_date,(CURRENT_DATE- added_date)as days_different
from products;

select * from products


-- 3.Extract() extract prats of a dtae
-- 3. EXTRACT THE YEAR, MONTH AND DAY FRO THE ADDED_DATE COLUMN....



select product_name, 
       EXTRACT (YEAR FROM added_date)as Year_Added,
	   EXTRACT (MONTH FROM added_date)as Month_Added

FROM products;



select * from products



select product_name, category,
       EXTRACT (YEAR FROM added_date)as Year_added,   
	   EXTRACT (DAY FROM added_date) as Date_added
from products;



-- 4 AGE()- CACULATE AGE BETWEEN DATES 
---CALCULATE THE TIME DIFFERENCE BETWEEN ADDED_DATE AND TODAY'S DATE,..


SELECT product_name,
      AGE(CURRENT_DATE, added_date)as Age_SINCE_added
FROM products;







-- 5. TO CHAR FUNCATION.... FORMAT DATES AS STRINGS 

-- FORMAT ADDED_DATE IN A CUSTOM FORMATE (DD-MM-YY),

SELECT product_name,
      TO_CHAR (added_date, 'DD-MONTH-YYYY') AS AG
	  FROM products ;








-- DAY 22 DATE AND TIME FUNCATIONS PART 02.....


-- EXTRACT THEDAY OF THE WEEK FRO ADDED_DATE



SELECT product_name, added_date,
        DATE_PART('Dow', added_date) as date_of_week
		from products




-- 7.. DATE_TRUNK() TURCATE DATE PRECISION

---TRUCATE ADDED_DATE TO THE START OF THE MONTH..

 SELECT product_name ,added_date,
       DATE_TRUNC('week', added_date) as week_start,
	   DATE_TRUNC('iosdow', added_date) as day_start
	   from products 




8. interval  add or subtract time Intervals

ADD 6 MONTH TO THE ADDED_DATE


SELECT product_name, added_date,
        added_date+ INTERVAL '6 year' AS NEW_DATE

		FROM products;



-- 9. CURRENT_TIME()  GET CURRENT TIME
--RETRUEVE ONLY THE CURRENT TIME



SELECT CURRENT_TIME() AS current_time;




select current_time as current_time



10.. to date() convert string to date

--convert a string to a date formate

select TO_DATE('28-11-2026', 'DD-MM-YYYY')AS CONVERTED_DATE;





-- DAY = 24
-- CONDITIONAL FUNCATION


SELECT * FROM PRODUCTS;



-- 1. CASE Funcation- Categorizing Based ON Conditions 
-- we will categorize productinto price ramges:


-- Expesive if the price is greater than or Equal to 50,000.
-- Moderate if the price os between 10000 and 49999.
-- Affordable if the price is less than 10000.






 Select product_name, price,
       CASE
	      WHEN price>=50000 THEN 'GODD PRODUCTS' 
		   WHEN price>=10000 AND price<=49999 THEN 'MODERATE'
		    ELSE 'AFFORDABLE'
			END AS PRICE_CATGORY_PRODUCTS 
FROM products;			





select product_name, category, price,
     CASE 
	     WHEN price>=50000 THEN 'GOOD PRODUCTS'
		 WHEN PRICE<=10000 THEN 'BAD PRODUCTS'
		 WHEN PRICE>=10000 THEN 'AVG PRODUCTS'
		
		 END AS new_table
FROM products;
		


-- ---DAY 25 SQL CLASSES
-- CASE ASSIGMENT 02Q

-- Q NUMBER 1

SELECT product_name, quantity,
          CASE 
		     WHEN quantity>=10 THEN 'IN STOCK'
             WHEN quantity<=10 THEN 'LIMIT STOCK'
			 WHEN quantity<=5 THEN  'OUT OF STOCK'
			 END AS NEW_STOCK

FROM products;





Select product_name , category,
      CASE 
	      WHEN category LIKE 'Electronics' Then 'Electronics Item'
		  	      WHEN category LIKE 'Accessories' Then 'Accessories Item'
	      ELSE 'Funiture Item'
		     END  AS New_table
	from products;		 

         


-- DAY 26. COALESEE FUNCATION HANDING NUL VALUE.....



select * from products




ALTER TABLE productS
Add column discount_price NUMERIC(10,2);





UPDATE products
SET discount_price = NULL
WHERE product_name IN('Laptop', 'desk');


select * from products



UPDATE products
SET discount_price = price*0.9
WHERE product_name NOT IN('Laptop', 'Desk');










select * from products




UPDATE products
SET discount_price= price*0.5
where product_name NOT IN ('Desk','Laptop');







SELECT product_name, price, discount_price
from products






SELECT product_name,
       COALESCE(discount_price, price)as FINAL_PRICE
	   
from products


select * from products


ALTER TABLE products
Drop column discount_price;



-- DAY 27 WINDOWS FUNCATION....


SELECT * FROM products


---ASSIG A UNQUE ROW NUMBER TO EACH PRODUCT WITHIN THE SAME CATEGORY


SELECT product_name, price, category,
   Row_Number() OVER(PARTITION BY category order by price desc) as new_table
   from products



SELECT product_name, price, category,
   RANK () OVER(PARTITION BY category order by price desc) as new_table
   from products



SELECT product_name, price, category,
   SUM(price) OVER (PARTITION BY category order by price desc) as Running_total
   from products






SELECT product_name, price, category,
   AVG(price) OVER (PARTITION BY category order by price desc) as Running_total
   from products




-- DAY 28  JOINS OF SQL MOST USE 


CREATE TABLE emploee3
(
employee_id  INT PRIMARY KEY,
first_name VARCHAR NOT NULL,
last_name VARCHAR NOT NULL,
department_id NUMERIC
);

SELECT * FROM emploee3

ALTER TABLE emploee3
RENAME TO employee;



UPDATE emploee3






INSERT INTO employee
VALUES
(1, 'Rahul', 'Sharma', 101),
(2, 'Priya', 'Mehta', 102),
(3, 'Ankit', 'Verma', 103),
(4, 'Simran', 'Kaur', NULL),
(5, 'Aman', 'Singh', 101);



SELECT * FROM employee

CREATE TABLE department
(
department_id  INT PRIMARY KEY,
department_name VARCHAR(50) NOT NULL
);



INSERT INTO department
VALUES
(101, 'Sales'),
(102, 'Marketing'),
(103, 'IT'),
(104, 'HR');






SELECT * FROM department
SELECT * FROM employee





SELECT employee_id, first_name, last_name From employee


SELECT e.employee_id, e.first_name, e.last_name,
d.department_id,  d.department_name
FROM employee e 
INNER JOIN 
department d
ON e.department_id=d.department_id
ORDER BY employee_id asc;











select * from department

SELECT e.employee_id, e.first_name, e.last_name,
d.department_id, d.department_name
FROM employee e
	 left JOIN 
	   department d
ON e.department_id =d.department_id
Order by employee_id ASC;







SELECT e.employee_id, e.first_name, e.last_name,
d.department_id, d.department_name 
FROM employee e
RIGHT JOIN
department d
ON e.department_id = d.department_id
ORDER BY employee_id asc;






SELECT e.employee_id, e.first_name, e.last_name,
d.department_id, d.department_name 
FROM employee e
FULL JOIN
department d
ON e.department_id = d.department_id
ORDER BY employee_id asc;








SELECT * FROM department

SELECT * FROM employee




-- DAY 29 joins in sql 2
 


SELECT e.employee_id, e.first_name, e.last_name,
d.department_id, d.department_name 
FROM employee e
FULL JOIN
department d
ON e.department_id = d.department_id
ORDER BY employee_id asc




SELECT e.employee_id, e.first_name, e.last_name,
d.department_id, d.department_name
FROM employee e
FULL JOIN
department d
ON e.department_id =d.department_id






----Q5. CROSS JOIN... 


SELECT e.first_name,e.last_name,d.department_name 
FROM 
employee e
CROSS JOIN
department d;






----Q6. SELF JOIN JOIN... 



SELECT * FROM employee


SELECT e1.first_name as employee_name1,
       e2.first_name as employee_name2,
	   d.department_name
	   
FROM employee e1 JOIN employee e2
 ON e1.department_id=e2.department_id AND e1. employee_id !=e2. employee_id
JOIN 
department d 
On e1.department_id=d.department_id;














--THIS IS A SELF JOINS...

SELECT e2.first_name as EMPLOYEE_1,
       e3.first_name as EMPLOYEE_2,
	   d.department_name
FROM employee e2 JOIN employee e3
ON e2.department_id=e3.department_id AND e2.employee_id !=e3.employee_id
JOIN 
department d
ON e2.department_id=d.department_id;

	   
	   







select * from employee 





SELECT e.first_name, e.last_name, e.department_id,
       d.department_id, d.department_name 
FROM employee e
RIGHT JOIN
department d 
ON e.department_id=d.department_id;





























