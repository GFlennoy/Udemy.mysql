# create table customers(
# id int AUTO_INCREMENT PRIMARY KEY,
# first_name varchar(100),
# last_name varchar(100),
# email varchar(100)
# );

# create table orders(
# id int AUTO_INCREMENT PRIMARY KEY,
# order_date date,
# amount decimal(8,2),
# customer_id int,
# foreign key(customer_id) references customers(id)
# );

# INSERT INTO customers (first_name, last_name, email) 
# VALUES ('Boy', 'George', 'george@gmail.com'),
#        ('George', 'Michael', 'gm@gmail.com'),
#        ('David', 'Bowie', 'david@gmail.com'),
#        ('Blue', 'Steele', 'blue@gmail.com'),
#        ('Bette', 'Davis', 'bette@aol.com');
       
# INSERT INTO orders (order_date, amount, customer_id)
# VALUES ('2016/02/10', 99.99, 1),
#        ('2017/11/11', 35.50, 1),
#        ('2014/12/12', 800.67, 2),
#        ('2015/01/03', 12.50, 2),
#        ('1999/04/11', 450.25, 5);

# SELECT * FROM orders where customer_id = (select id from customers where last_name='George');

# JOINS - takes two tables and conjoins 

# cross-join: select * from customers, orders;
# cross-joins aren't really useful, they just compound data

# implicit inner join
# select * from customers, orders where customers.id = orders.customer_id;
# fixes problem by specifying info from both tables

# implicit inner-join 2
# select first_name, last_name, order_date, amount from customers, orders where customers.id = orders.customer_id;

# Explicit inner join
# select * from customers join orders on customers.id = orders.customer_id;
# select first_name, last_name, order_date, amount from customers join orders on customers.id = orders.customer_id;

# Arbitrary joins are meaningless but possible
# select * from customers join orders on customers.id = orders.id;

# get fancy (still inner-joins)
# select first_name, last_name, sum(amount) as total_spent
# from customers
# join orders
#     on customers.id = orders.customer_id
# group by orders.customer_id
# order by total_spent DESC;

# Left Join
# select first_name,
#         last_name,
#         SUM(amount)
# from customers
# left join orders
#         on customers.id = orders.customer_id
# group by customers.id;

# select first_name,
#         last_name,
#         IFNULL(sum(amount), 0) as total_spent
# from customers
# left join orders
#         on customers.id = orders.customer_id
# group by customers.id
# order by total_spent;

# Right Join
# same as left join, but on other side
# select * from customers
# join orders    
#     on customers.id = orders.customer_id;

# Altering schema to allow for better example
# CREATE TABLE customers(
#     id INT AUTO_INCREMENT PRIMARY KEY,
#     first_name VARCHAR(100),
#     last_name VARCHAR(100),
#     email VARCHAR(100)
# );
# CREATE TABLE orders(
#     id INT AUTO_INCREMENT PRIMARY KEY,
#     order_date DATE,
#     amount DECIMAL(8,2),
#     customer_id INT
# );

# Inserting new data (no longer bound by foreign key)
# INSERT INTO customers (first_name, last_name, email) 
# VALUES ('Boy', 'George', 'george@gmail.com'),
#        ('George', 'Michael', 'gm@gmail.com'),
#        ('David', 'Bowie', 'david@gmail.com'),
#        ('Blue', 'Steele', 'blue@gmail.com'),
#        ('Bette', 'Davis', 'bette@aol.com');
       
# INSERT INTO orders (order_date, amount, customer_id)
# VALUES ('2016/02/10', 99.99, 1),
#        ('2017/11/11', 35.50, 1),
#        ('2014/12/12', 800.67, 2),
#        ('2015/01/03', 12.50, 2),
#        ('1999/04/11', 450.25, 5);
 
# INSERT INTO orders (order_date, amount, customer_id) VALUES
# ('2017/11/05', 23.45, 45),
# (CURDATE(), 777.77, 109);

# Right Join
# select
#     IFNULL(first_name, 'missing') as first,
#     IFNULL(last_name, 'user')as last,
#     order_date, 
#     amount, 
#     sum(amount)
# from customers
# right join orders
#     on customers.id = orders.customer_id
# group by first_name, last_name;

# on delete cascade
# create table customers(
# id int AUTO_INCREMENT PRIMARY KEY,
# first_name varchar(100),
# last_name varchar(100),
# email varchar(100)
# );

# create table orders(
# id int AUTO_INCREMENT PRIMARY KEY,
# order_date date,
# amount decimal(8,2),
# customer_id int,
# foreign key(customer_id) 
#     references customers(id)
#     on delete cascade
# );

# INSERT INTO customers (first_name, last_name, email) 
# VALUES ('Boy', 'George', 'george@gmail.com'),
#        ('George', 'Michael', 'gm@gmail.com'),
#        ('David', 'Bowie', 'david@gmail.com'),
#        ('Blue', 'Steele', 'blue@gmail.com'),
#        ('Bette', 'Davis', 'bette@aol.com');
       
# INSERT INTO orders (order_date, amount, customer_id)
# VALUES ('2016/02/10', 99.99, 1),
#        ('2017/11/11', 35.50, 1),
#        ('2014/12/12', 800.67, 2),
#        ('2015/01/03', 12.50, 2),
#        ('1999/04/11', 450.25, 5);










