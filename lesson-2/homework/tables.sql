*/1. Display All Salespeople*/
create table homework1 (salesman_id int, name varchar (100), city varchar(100), comission decimal(10,2))
select * from homework1;
insert into homework1(salesman_id, name, city, comission) values
(5001, 'James Hoog', 'New York', 0.15),
(5002, 'Nail Knite', 'Paris', 0.13),
(5005, 'Pit Alex', 'London', 0.11),
(5006, 'Mc Lyon', 'Paris', 0.14),
(5007, 'Paul Adam', 'Rome', 0.13),
(5007, 'Lauson Hen', 'San Jose', 0.12);


select name, city
from homework1 
where city='Paris';


*/7. Custom Column Order in Orders*/
create table homework2 (ord_no int, purch_amt decimal(10,2), ord_date date, customer_id int, salesman_id int)
insert into homework2 (ord_no, purch_amt, ord_date, customer_id, salesman_id)
VALUES
(70001, 150.5, '2012-10-05', 3005, 5002),
(70009, 270.65, '2012-09-10', 3001, 5005),
(70002, 65.26, '2012-10-05', 3002, 5001),
(70004, 110.5, '2012-08-17', 3009, 5003),
(70007, 948.5, '2012-09-10', 3005, 5002),
(70005, 2400.6, '2012-07-27', 3007, 5001),
(70008, 5760, '2012-09-10', 3002, 5001),
(70010, 1983.43, '2012-10-10', 3004, 5006),
(70003, 2480.4, '2012-10-10', 3009, 5003),
(70012, 250.45, '2012-06-27', 3008, 5002);

select ord_date, salesman_id, ord_no, purch_amt
from homework2;

select distinct salesman_id
from homework2

CREATE TABLE customer (customer_id INT, cust_name VARCHAR(100), city VARCHAR(50), grade INT, salesman_id INT
);
	INSERT INTO customer (customer_id, cust_name, city, grade, salesman_id) VALUES
(3002, 'Nick Rimando', 'New York', 100, 5001),
(3007, 'Brad Davis', 'New York', 200, 5001),
(3005, 'Graham Zusi', 'California', 200, 5002),
(3008, 'Julian Green', 'London', 300, 5002),
(3004, 'Fabian Johnson', 'Paris', 300, 5006),
(3009, 'Geoff Cameron', 'Berlin', 100, 5003),
(3003, 'Jozy Altidor', 'Moscow', 200, 5007),
(3001, 'Brad Guzan', 'London', NULL, 5005);

select customer_id, cust_name, city, grade, salesman_id
from customer
where grade = 200;

select ord_no, ord_date, purch_amt
from homework2
where salesman_id = 5001;

CREATE TABLE nobel_win (YEAR INT, SUBJECT VARCHAR(255),WINNER VARCHAR(255),COUNTRY VARCHAR(255),
CATEGORY VARCHAR(255));
INSERT INTO nobel_win (YEAR, SUBJECT, WINNER, COUNTRY, CATEGORY) VALUES
(1970, 'Physics', 'Hannes Alfven', 'Sweden', 'Scientist'),
(1970, 'Physics', 'Louis Neel', 'France', 'Scientist'),
(1970, 'Chemistry', 'Luis Federico Leloir', 'France', 'Scientist'),
(1970, 'Physiology', 'Ulf von Euler', 'Sweden', 'Scientist'),
(1970, 'Physiology', 'Bernard Katz', 'Germany', 'Scientist'),
(1970,	, 'Aleksandr Solzhenitsyn', 'Russia', 'Linguist'),
(1970, 'Economics',  'Paul Samuelson', 'USA', 'Economist'),
(1970, 'Physiology', 'Julius Axelrod', 'USA', 'Scientist'),
(1971, 'Physics', 'Dennis Gabor', 'Hungary', 'Scientist');


SELECT YEAR, SUBJECT, WINNER
FROM nobel_win
WHERE YEAR = 1970;

SELECT WINNER
FROM nobel_win
WHERE YEAR = 1971 AND subject = 'Literature';

SELECT YEAR, SUBJECT
FROM nobel_win
WHERE WINNER = 'Dennis Gabor';

SELECT WINNER
FROM nobel_win
WHERE SUBJECT = 'Physics' AND YEAR >= 1950

SELECT YEAR, SUBJECT, WINNER, COUNTRY
FROM nobel_win
WHERE SUBJECT = 'Chemistry' AND YEAR BETWEEN 1965 AND 1975;


SELECT YEAR, SUBJECT, WINNER, COUNTRY, CATEGORY
FROM nobel_win
WHERE WINNER LIKE 'Louis%';

SELECT YEAR, SUBJECT, WINNER, COUNTRY, CATEGORY
FROM nobel_win
WHERE (YEAR = 1970 AND SUBJECT = 'Physics')
   OR (YEAR = 1971 AND SUBJECT = 'Economics');

SELECT YEAR, SUBJECT, WINNER, COUNTRY, CATEGORY
FROM nobel_win
WHERE YEAR = 1970 
  AND SUBJECT NOT IN ('Physiology', 'Economics');

SELECT YEAR, SUBJECT, WINNER, COUNTRY, CATEGORY
FROM nobel_win
WHERE SUBJECT = 'Physiology' AND YEAR < 1971

UNION

SELECT YEAR, SUBJECT, WINNER, COUNTRY, CATEGORY
FROM nobel_win
WHERE SUBJECT = 'Peace' AND YEAR >= 1974;

SELECT YEAR, SUBJECT, WINNER, COUNTRY, CATEGORY
FROM nobel_win
WHERE SUBJECT NOT LIKE 'P%'
ORDER BY YEAR DESC, WINNER ASC;

SELECT YEAR, SUBJECT, WINNER, COUNTRY, CATEGORY
FROM nobel_win
WHERE YEAR = 1970 ORDER BY CASE WHEN SUBJECT = 'Chemistry' OR SUBJECT = 'Economics' THEN 1 ELSE 0
END, SUBJECT ASC;


CREATE TABLE item_mast (PRO_ID INT PRIMARY KEY,PRO_NAME VARCHAR(100),PRO_PRICE DECIMAL(10, 2),
PRO_COM INT);
INSERT INTO item_mast (PRO_ID, PRO_NAME, PRO_PRICE, PRO_COM) VALUES
(101, 'Mother Board', 3200.00, 15),
(102, 'Key Board', 450.00, 16),
(103, 'ZIP drive', 250.00, 14),
(104, 'Speaker', 550.00, 16),
(105, 'Monitor', 5000.00, 11),
(106, 'DVD drive', 900.00, 12),
(107, 'CD drive', 800.00, 12),
(108, 'Printer', 2600.00, 13),
(109, 'Refill cartridge', 350.00, 13),
(110, 'Mouse', 250.00, 12);


SELECT PRO_ID, PRO_NAME, PRO_PRICE, PRO_COM
FROM item_mast
WHERE PRO_PRICE BETWEEN 200 AND 600;

SELECT AVG(PRO_PRICE) AS avg
FROM item_mast
WHERE PRO_COM = 16;

SELECT PRO_NAME AS 'Item Name', PRO_PRICE AS 'Price in Rs.'
FROM item_mast;


SELECT PRO_NAME, PRO_PRICE
FROM item_mast
WHERE PRO_PRICE >= 250
ORDER BY PRO_PRICE DESC, PRO_NAME ASC;


SELECT PRO_COM, AVG(PRO_PRICE) AS average_price
FROM item_mast
GROUP BY PRO_COM;

SELECT PRO_NAME, PRO_PRICE
FROM item_mast
WHERE PRO_PRICE = (SELECT MIN(PRO_PRICE) FROM item_mast);

CREATE TABLE emp_details ( EMP_IDNO INT, EMP_FNAME VARCHAR(50), EMP_LNAME VARCHAR(50), EMP_DEPT INT);
INSERT INTO emp_details (EMP_IDNO, EMP_FNAME, EMP_LNAME, EMP_DEPT)
VALUES
    (127323, 'Michale', 'Robbin', 57),
    (526689, 'Carlos', 'Snares', 63),
    (843795, 'Enric', 'Dosio', 57),
    (328717, 'Jhon', 'Snares', 63),
    (444527, 'Joseph', 'Dosni', 47),
    (659831, 'Zanifer', 'Emily', 47),
    (847674, 'Kuleswar', 'Sitaraman', 57),
    (748681, 'Henrey', 'Gabriel', 47),
    (555935, 'Alex', 'Manuel', 57),
    (539569, 'George', 'Mardy', 27),
    (733843, 'Mario', 'Saule', 63),
    (631548, 'Alan', 'Snappy', 27),
    (839139, 'Maria', 'Foster', 57);

SELECT DISTINCT EMP_LNAME
FROM emp_details;

SELECT EMP_IDNO, EMP_FNAME, EMP_LNAME, EMP_DEPT
FROM emp_details
WHERE EMP_LNAME = 'Snares';

SELECT EMP_IDNO, EMP_FNAME, EMP_LNAME, EMP_DEPT
FROM emp_details
WHERE EMP_DEPT = 57;
