SELECT * FROM customers;
SELECT * FROM orders;
SELECT * FROM products;
SELECT * FROM order_items;

// "Customers only from Chennai"//
select * from customers 
where city = 'Chennai';

// "Total Revenue"//
select sum(total_amount) as total_revenue
from orders;

// "  Top 3 highest Orders" //
SELECT TOP 3 *
FROM orders
ORDER BY total_amount DESC;

// 'joining customers and orders' //
SELECT c.customer_id, c.name, o.order_id, o.total_amount
FROM customers c
JOIN orders o 
ON c.customer_id = o.customer_id;

//'Revenue Per Customer'//
SELECT c.name, SUM(o.total_amount) AS total_spent
FROM customers c
JOIN orders o 
ON c.customer_id = o.customer_id
GROUP BY c.name;

// 'Top 3 Customers' //
SELECT TOP 3 c.name, SUM(o.total_amount) AS total_spent
FROM customers c
JOIN orders o 
ON c.customer_id = o.customer_id
GROUP BY c.name
ORDER BY total_spent DESC;

// 'best selling products' //
SELECT p.product_name, SUM(oi.quantity) AS total_sold
FROM order_items oi
JOIN products p 
ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC;

// 'Monthly revenue'//
select order_date AS month,
    SUM(total_amount) AS revenue
FROM orders
GROUP BY order_date
ORDER BY revenue desc ;

// 'Rank Customers' //
SELECT c.name,
       SUM(o.total_amount) AS total_spent,
       RANK() OVER (ORDER BY SUM(o.total_amount) DESC) AS rank
FROM customers c
JOIN orders o 
ON c.customer_id = o.customer_id
GROUP BY c.name
order by rank;

