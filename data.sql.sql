INSERT INTO customers VALUES
(1, 'Arun', 'Chennai'),
(2, 'Priya', 'Bangalore'),
(3, 'Rahul', 'Mumbai'),
(4, 'Sneha', 'Chennai'),
(5, 'Karthik', 'Hyderabad'),
(6, 'Meena', 'Delhi'),
(7, 'Vikram', 'Chennai'),
(8, 'Anjali', 'Pune');
INSERT INTO products VALUES
(1, 'Laptop', 'Electronics'),
(2, 'Phone', 'Electronics'),
(3, 'Headphones', 'Accessories'),
(4, 'Keyboard', 'Accessories'),
(5, 'Mouse', 'Accessories'),
(6, 'Monitor', 'Electronics');
INSERT INTO orders VALUES
(101, 1, '2024-01-10', 55000),
(102, 2, '2024-01-15', 30000),
(103, 3, '2024-02-01', 15000),
(104, 1, '2024-02-10', 20000),
(105, 4, '2024-03-05', 45000),
(106, 5, '2024-03-12', 25000),
(107, 6, '2024-03-20', 10000),
(108, 7, '2024-04-01', 60000),
(109, 8, '2024-04-05', 18000),
(110, 2, '2024-04-10', 22000);

INSERT INTO order_items VALUES
(1, 101, 1, 1, 55000),
(2, 102, 2, 1, 30000),
(3, 103, 3, 2, 7500),
(4, 104, 4, 2, 10000),
(5, 105, 1, 1, 45000),
(6, 106, 2, 1, 25000),
(7, 107, 5, 2, 5000),
(8, 108, 6, 1, 60000),
(9, 109, 3, 2, 9000),
(10, 110, 4, 2, 11000);
