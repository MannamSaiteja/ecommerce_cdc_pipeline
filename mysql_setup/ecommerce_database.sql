Create database ecommerce;
use ecommerce;
create table if not exists customers(
customer_id int primary key auto_increment,
 name varchar(50) not null,
 email varchar(50) unique not null,
 created_at timestamp default current_timestamp);
 
 create table if not exists products(
 product_id int primary key auto_increment,
 name varchar(50) not null,
 price decimal(10,2) not null,
 stock_quantity int not null,
 created_at timestamp default current_timestamp
 );
 
 create table orders(
 order_id int primary key auto_increment,
 customer_id int,
 product_id int,
 status enum('Pending','Shipped','Delivered','Cancelled') default 'Pending',
 order_date timestamp default current_timestamp,
 foreign key (customer_id) references customers(customer_id),
 foreign key (product_id) references products(product_id)
 );
 
 show tables;
 
 insert into customers(name, email) values
 ('Alice Johnson', 'alice@example.com'),
('Bob Smith', 'bob@example.com'),
('Charlie Adams', 'charlie@example.com'),
('David Brown', 'david@example.com'),
('Emma Williams', 'emma@example.com'),
('Frank Harris', 'frank@example.com'),
('Grace Miller', 'grace@example.com'),
('Henry Clark', 'henry@example.com'),
('Ivy Thompson', 'ivy@example.com'),
('Jack White', 'jack@example.com');

select * from customers;

insert into products(name,price,stock_quantity) values
('Laptop', 1200.00, 50),
('Smartphone', 800.00, 100),
('Tablet', 500.00, 75),
('Smartwatch', 300.00, 120),
('Headphones', 150.00, 200),
('Wireless Mouse', 50.00, 300),
('Mechanical Keyboard', 100.00, 150),
('Gaming Monitor', 250.00, 80),
('Portable Speaker', 120.00, 175),
('External Hard Drive', 180.00, 90);

select * from products;

insert into orders(customer_id,product_id,status) values
(1, 1, 'Pending'),
(2, 2, 'Shipped'),
(3, 3, 'Delivered'),
(4, 4, 'Pending'),
(5, 5, 'Shipped'),
(6, 6, 'Cancelled'),
(7, 7, 'Pending'),
(8, 8, 'Delivered'),
(9, 9, 'Shipped'),
(10, 10, 'Pending');

select * from orders;

show variables like 'log_bin';
SHOW VARIABLES LIKE 'binlog_format';
SHOW VARIABLES LIKE 'binlog_row_image';
SHOW BINARY LOGS;
show master status;