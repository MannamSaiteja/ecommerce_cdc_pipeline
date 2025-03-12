INSERT INTO orders (customer_id, product_id, status) 
VALUES (3, 2, 'Pending');
UPDATE orders SET status = 'Shipped' WHERE order_id = 101;

INSERT INTO customers (name, email) VALUES ('John Doe', 'johndoe@example.com');