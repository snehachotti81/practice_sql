/*1. From the following table, write a SQL query to calculate total purchase amount of all orders. Return total purchase amount. */
use practice_19_12_2023;

select sum(purch_amt) from orders;

/*2. From the following table, write a SQL query to calculate the average purchase amount of all orders. Return average purchase amount. */
select AVG(purch_amt) from orders;
/*3. From the following table, write a SQL query that counts the number of unique salespeople. Return number of salespeople.*/
select count(distinct salesman_id) from orders;

/*4. From the following table, write a SQL query to count the number of customers. Return number of customers.  */
select count(distinct customer_id) from orders;

/*6. From the following table, write a SQL query to find the maximum purchase amount.*/
select max(purch_amt) from orders;

/*7. From the following table, write a SQL query to find the minimum purchase amount. */
select min(purch_amt) from orders;
/*8. From the following table, write a SQL query to find the highest grade of the customers in each city. Return city, maximum grade*/



/*9. From the following table, write a SQL query to find the highest purchase amount ordered by each customer. Return customer ID, max/imum purchase amount. */
select customer_id , max(purch_amt) from orders GROUP BY customer_id;

/*10. From the following table, write a SQL query to find the highest purchase amount ordered by each customer on a particular date. Return, order date and highest purchase amount.*/
select ord_date , max(purch_amt) from orders ;


/*
*/






