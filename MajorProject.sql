CREATE DATABASE my_database;

USE my_database;

CREATE TABLE customer (
	cust_id int,
    username VARCHAR(20),
    password VARCHAR(20),
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    email VARCHAR(20),
    address VARCHAR(50),
    phone_number VARCHAR(15),
    primary key(cust_id)
);

INSERT INTO customer (cust_id, username, password, first_name, last_name, email, address, phone_number)
VALUES
(1, 'user1', 'pass1', 'John', 'Doe', 'user1@example.com', '123 Main St', '555-123-4567'),
(2, 'user2', 'pass2', 'Jane', 'Doe', 'user2@example.com', '456 Main St', '555-123-4568'),
(3, 'user3', 'pass3', 'Jim', 'Brown', 'user3@example.com', '789 Main St', '555-123-4569'),
(4, 'user4', 'pass4', 'Jack', 'Black', 'user4@example.com', '321 Main St', '555-123-4560'),
(5, 'user5', 'pass5', 'Ann', 'Green', 'user5@example.com', '654 Main St', '555-123-4561'),
(6, 'user6', 'pass6', 'Bob', 'White', 'user6@example.com', '987 Main St', '555-123-4562'),
(7, 'user7', 'pass7', 'Pam', 'Gray', 'user7@example.com', '234 Main St', '555-123-4563'),
(8, 'user8', 'pass8', 'Mary', 'Smith', 'user8@example.com', '543 Main St', '555-123-4564'),
(9, 'user9', 'pass9', 'Tim', 'Jones', 'user9@example.com', '888 Main St', '555-123-4565'),
(10, 'user10', 'pass10', 'Sam', 'Davis', 'user10@example.com', '135 Main St', '555-123-4566'),
(11, 'user11', 'pass11', 'Kim', 'Miller', 'user11@example.com', '345 Main St', '555-123-4567'),
(12, 'user12', 'pass12', 'Bob', 'Thomas', 'user12@example.com', '567 Main St', '555-123-4568'),
(13, 'user13', 'pass13', 'Sue', 'Wilson', 'user13@example.com', '777 Main St', '555-123-4569'),
(14, 'user14', 'pass14', 'Tom', 'Moore', 'user14@example.com', '999 Main St', '555-123-4560'),
(15, 'user15', 'pass15', 'Jan', 'Taylor', 'user15@example.com', '111 Main St', '555-123-4561'),
(16, 'user16', 'pass16', 'Kim', 'Anderson', 'user16@example.com', '222 Main St', '555-123-4562'),
(17, 'user17', 'pass17', 'Joan', 'Thomas', 'user17@example.com', '333 Main St', '555-123-4563'),
(18, 'user18', 'pass18', 'Steve', 'Johnson', 'user18@example.com', '444 Main St', '555-123-4564');

select * from   customer;

CREATE TABLE admin_info (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50),
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    address VARCHAR(255),
    phone_number VARCHAR(20),
    password VARCHAR(50)
);

INSERT INTO admin_info (username, first_name, last_name, email, address, phone_number, password)
VALUES
('admin1', 'John', 'Doe', 'admin1@example.com', '123 Admin St', '555-987-6543', 'adminpass1'),
('admin2', 'Jane', 'Smith', 'admin2@example.com', '456 Admin St', '555-123-4567', 'adminpass2'),
('admin3', 'Jim', 'Brown', 'admin3@example.com', '789 Admin St', '555-765-4321', 'adminpass3');

---------------------
CREATE TABLE ticket_status (
    ticket_id INT,
    status VARCHAR(20)
);

INSERT INTO ticket_status (ticket_id, status)
VALUES
(1, 'open'),
(2, 'in progress'),
(3, 'closed'),
(4, 'pending'),
(5, 'on hold'),
(6, 'solved'),
(7, 'assigned'),
(8, 'reopened'),
(9, 'escalated'),
(10, 'resolved'),
(11, 'duplicate'),
(12, 'invalid'),
(13, 'suspended'),
(14, 'not done'),
(15, 'failed'),
(16, 'postponed'),
(17, 'incomplete'),
(18, 'cancelled'),
(19, 'transferred');

CREATE TABLE flight (
    flight_no VARCHAR(10),
    origin VARCHAR(50),
    destination VARCHAR(50),
    depature_time TIME,
    arrival_time TIME,
    price DECIMAL(10,2)
);

INSERT INTO flight (flight_no, origin, destination, depature_time, arrival_time, price)
VALUES
('FL101', 'New York', 'Los Angeles', '10:00:00', '13:00:00', 300.00),
('FL102', 'Los Angeles', 'New York', '14:00:00', '17:00:00', 300.00),
('FL103', 'Chicago', 'Miami', '08:00:00', '11:00:00', 250.00),
('FL104', 'Miami', 'Chicago', '12:00:00', '15:00:00', 250.00),
('FL105', 'San Francisco', 'Boston', '09:00:00', '16:00:00', 400.00),
('FL106', 'Boston', 'San Francisco', '10:00:00', '19:00:00', 400.00),
('FL107', 'Houston', 'Dallas', '08:00:00', '09:00:00', 100.00),
('FL108', 'Dallas', 'Houston', '10:00:00', '11:00:00', 100.00),
('FL109', 'Seattle', 'Denver', '11:00:00', '14:00:00', 200.00),
('FL110', 'Denver', 'Seattle', '15:00:00', '18:00:00', 200.00),
('FL111', 'Philadelphia', 'Atlanta', '09:00:00', '12:00:00', 250.00),
('FL112', 'Atlanta', 'Philadelphia', '13:00:00', '16:00:00', 250.00),
('FL113', 'Phoenix', 'Las Vegas', '08:00:00', '09:00:00', 150.00),
('FL114', 'Las Vegas', 'Phoenix', '10:00:00', '11:00:00', 150.00),
('FL115', 'Portland', 'Salt Lake City', '11:00:00', '14:00:00', 200.00),
('FL116', 'Salt Lake City', 'Portland', '15:00:00', '18:00:00', 200.00),
('FL117', 'Newark', 'Washington D.C', '08:00:00', '10:00:00', 150.00),
('FL118', 'Washington D.C', 'Newark', '11:00:00', '13:00:00', 150.00),
('FL119', 'Orlando', 'Nashville', '10:00:00', '12:00:00', 150.00),
('FL120', 'Portland', 'Salt Lake City', '11:00:00', '14:00:00', 200.00);

CREATE TABLE airline_details (
    airline_no VARCHAR(10),
    airline_path VARCHAR(50)
);

INSERT INTO airline_details (airline_no, airline_path)
VALUES
('1', 'path1'),
('2', 'path2'),
('3', 'path3'),
('4', 'path4'),
('5', 'path5'),
('6', 'path6'),
('7', 'path7'),
('8', 'path8'),
('9', 'path9'),
('10', 'path10'),
('11', 'path11'),
('12', 'path12'),
('13', 'path13'),
('14', 'path14'),
('15', 'path15'),
('16', 'path16'),
('17', 'path17'),
('18', 'path18'),
('19', 'path19'),
('20', 'path20');

-- customer table-----------------------------------
SELECT * FROM customer WHERE last_name = 'Doe';
SELECT * FROM customer WHERE email LIKE '%example.com';
SELECT * FROM customer WHERE first_name LIKE 'J%' AND last_name LIKE 'T%';
SELECT * FROM customer WHERE phone_number LIKE '555-%';
SELECT * FROM customer ORDER BY last_name;
SELECT * FROM customer ORDER BY last_name DESC;
SELECT COUNT(*) FROM customer;
SELECT * FROM customer WHERE first_name IN ("Bob", "Ann");

-- flight------------------------------------------------
SELECT * FROM flight WHERE origin = 'New York';
SELECT * FROM flight WHERE destination = 'Los Angeles';
SELECT * FROM flight WHERE price > 300.00;
SELECT * FROM flight ORDER BY depature_time;
SELECT * FROM flight ORDER BY price DESC;
SELECT * FROM flight ORDER BY origin, destination;
SELECT * FROM flight WHERE depature_time BETWEEN '08:00:00' AND '11:00:00';
SELECT COUNT(*) FROM flight;
SELECT flight_no, origin, destination, TIME_FORMAT(depature_time,'%H:%i'), TIME_FORMAT(arrival_time,'%H:%i'), price FROM flight;
---------------------------------------------------------------------------------------------
SELECT * FROM flight
LEFT JOIN ticket_status ON 1 = 1
WHERE flight.price > 300 AND ticket_status.status = 'closed';

SELECT * FROM flight
LEFT JOIN ticket_status ON 1 = 1
WHERE flight.origin = 'New York' AND flight.destination = 'Los Angeles';

SELECT * FROM flight
LEFT JOIN ticket_status ON 1 = 1;

SELECT * FROM ticket_status WHERE status IN ('closed', 'solved');

SELECT * FROM ticket_status;
SELECT * FROM flight WHERE depature_time < '10:00:00' AND arrival_time > '16:00:00';
SELECT * FROM flight WHERE destination = 'Los Angeles';
SELECT origin, destination, COUNT(*) as num_flights
FROM flight
GROUP BY origin, destination
ORDER BY num_flights DESC;

SELECT AVG(TIME_TO_SEC(depature_time) / 60) as avg_depature_time_min
FROM flight;

SELECT SUM(price) as total_price
FROM flight;

SELECT origin, destination, COUNT(*) as num_flights
FROM flight
GROUP BY origin, destination;

SELECT origin, COUNT(*) as num_flights
FROM flight
GROUP BY origin;

SELECT destination, AVG(price) as avg_price
FROM flight
GROUP BY destination;

SELECT destination, COUNT(*) as num_flights
FROM flight
GROUP BY destination;

SELECT MIN(price) as min_price, MAX(price) as max_price FROM flight;

SELECT COUNT(*) as num_flights FROM flight;

SELECT AVG(price) as avg_price FROM flight;

CREATE VIEW airline_path_with_flights_and_price_sorted_view AS
SELECT ad.airline_no, ad.airline_path, COUNT(f.flight_no) as num_flights, AVG(f.price) as avg_price
FROM airline_details ad
LEFT JOIN flight f ON ad.airline_no = f.airline_no
GROUP BY ad.airline_no, ad.airline_path
ORDER BY num_flights DESC, avg_price ASC

SELECT airline_path, num_flights, avg_price
FROM airline_path_with_flights_and_price_sorted_by_num_flights_view
ORDER BY num_flights DESC
LIMIT 3;

CREATE VIEW airline_path_with_flights_and_price_sorted_by_num_flights_view AS
SELECT ad.airline_no, ad.airline_path, COUNT(f.flight_no) as num_flights, AVG(f.price) as avg_price
FROM airline_details ad
LEFT JOIN flight f ON ad.airline_no = f.airline_no
GROUP BY ad.airline_no, ad.airline_path
ORDER BY num_flights DESC;

SELECT airline_path, num_flights, avg_price
FROM airline_path_with_flights_and_price_view
WHERE airline_no = '1';

CREATE VIEW airline_path_with_flights_and_price_view AS
SELECT ad.airline_no, ad.airline_path, COUNT(f.flight_no) as num_flights, AVG(f.price) as avg_price
FROM airline_details ad
LEFT JOIN flight f ON ad.airline_no = f.airline_no
GROUP BY ad.airline_no, ad.airline_path;

SELECT airline_path, num_flights
FROM airline_path_with_flights_view
WHERE airline_no = '1';

CREATE VIEW airline_path_with_flights_view AS
SELECT ad.airline_no, ad.airline_path, COUNT(f.flight_no) as num_flights
FROM airline_details ad
LEFT JOIN flight f ON ad.airline_no = f.airline_no
GROUP BY ad.airline_no, ad.airline_path;

SELECT airline_path
FROM airline_path_view
WHERE airline_no IN ('1', '2', '3');

CREATE VIEW airline_path_view AS
SELECT airline_no, airline_path
FROM airline_details;

