 /*Write a SQL statement that displays all the information about all salespeople.

Sample table: salesman */

create database practice_19_12_2023;
use practice_19_12_2023;
create table salesman (salesman_id int , name varchar(255) , city varchar(255) , commission decimal(2,2));
select * from salesman;
insert into  salesman(salesman_id , name ,city , commission) values ( 5001 , 'James Hoog' ,' New York' , 0.15), (5002 , 'Nail Knite' ,'Paris',0.13),(5005,'Pit Alex','London',0.11),(5006,' Mc Lyon','Paris',0.14),(5007,' Paul Adam','Rome',0.13),(5003,' Lauson Hen','San Jose',0.12);

/*
===================================================================================================================================================================
3. Write a SQL query to display three numbers in three columns. 

*/

alter table salesman add column  no1 int (10);

/*========================================================
Write a SQL query to display the sum of two numbers 10 and 15 from the RDBMS server.*/

select 4+5;

/*
============================================================
Write an SQL query to display the result of an arithmetic expression. */
select salesman_id , name , city, commission+2 AS "new commission" from  salesman;
/*
=========================================================================================
6. Write a SQL statement to display specific columns such as names and commissions for all salespeople.  
*/
select name , commission from salesman;

/*
====================================================================================================
7. Write a query to display the columns in a specific order, such as order date, salesman ID, order number, and purchase amount for all orders. */
create table orders (ord_no int,purch_amt dec(10,3) , ord_date datetime, customer_id int, salesman_id int);
insert into orders (ord_no,purch_amt, ord_date, customer_id, salesman_id) values (70001,150.5,'2012-10-05',3005,5002),(70009,270.65,'2012-09-10',3001,5005),(70002,65.26,'2012-10-05',3002,5001),(70004,110.5,'2012-08-17',3009,5003),(70007,948.5,'2012-09-10',3005,5002),(70005,2400.6,'2012-07-27',3007,5001),(70008,5760,'2012-09-10',3002,5001),(70010,1983.43,'2012-10-10',3004,5006),(70003,2480.4,'2012-10-10',3009,5003),(70012,250.45,'012-06-27',3008,5002),(70011,75.29,'2012-08-17',3003,5007),(70013,3045.6,'2012-04-25',3002,5001);
select * from orders;
select ord_date,salesman_id, ord_no,purch_amt from orders;

/*==========================================================================
8. From the following table, write a SQL query to identify the unique salespeople ID. Return salesman_id. 
*/
select distinct salesman_id from orders;

/*=======================================================================================================
9. From the following table, write a SQL query to locate salespeople who live in the city of 'Paris'. Return salesperson's name, city. */
select name, city from salesman where city='paris';

/*
=======================================================================================================================================
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
10. From the following table, write a SQL query to find customers whose grade is 200. Return customer_id, cust_name, city, grade, salesman_id. 
*/
/*==================================================================================================================================
11. From the following table, write a SQL query to find orders that are delivered by a salesperson with ID. 5001. Return ord_no, ord_date, purch_amt. 
*/
select ord_no, ord_date, purch_amt from orders where salesman_id =5001;

/*====================
2====================*/
 select "This is SQL Exercise, Practice and Solution" as a;
 
 
 
 

















