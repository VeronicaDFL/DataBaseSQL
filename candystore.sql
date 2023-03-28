CREATE DATABASE candystore;--create database

USE candystore;--switch to candystore database

--create the custyomer table

CREATE TABLE customer (

    customerId INT AUTO_INCREMENT PRIMARY KEY,

    firstName VARCHAR(20) NOT NULL,
    lastName VARCHAR(20) NOT NULL,
    email VARCHAR (30),
    phone VARCHAR (20),
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);


--add our first customer
INSERT INTO customer (firstName, lastName, email, phone)

VALUES('Damian', 'Monmtero', 'damian@bocacode.com', '976-CODE');

--let's get ALL the customers
SELECT * FROM customer;

INSERT INTO customer (firstName, lastName, email, phone)

VALUE ('Cassandra', 'Cursio', 'cassandra@bocacode.com', '954-CAT');

SELECT * FROM customer;



CREATE TABLE orders (

    ordersId INT AUTO_INCREMENT PRIMARY KEY,
    customerId INT NOT NULL,
    total DECIMAL(6, 2),
    tax DECIMAL(7, 2),
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);

--NOW LET'S add an order to our order table:

    INSERT INTO orders (customerId, total, tax ) 
    VALUES (1, 19.48, 0.18), (2, 49.26, 3.44);

    --how can I search for all of Damina's orders 


    SELECT * FROM customer 
    JOIN orders ON orders.customerId = customer.customerId
    WHERE firstName = 'Damian';
    