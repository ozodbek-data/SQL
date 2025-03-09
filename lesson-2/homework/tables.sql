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
