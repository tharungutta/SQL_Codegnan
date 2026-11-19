USE cdg_jfs_hyd_059;
-- DROP DATABASE cdg_jfs_hyd_059;
-- DROP TABLE products;
CREATE TABLE products (
    product_id INT,
    name VARCHAR(100),
    price DECIMAL
);

DROP TABLE products;

CREATE TABLE products (
    product_id INT,
    name VARCHAR(100),
    price DECIMAL(6,2)
);

INSERT INTO 
     products(product_id, name, price) 
VALUES 
     (101, 'Maggi Vegetable Noodles',15);
     
INSERT INTO 
    products(product_id, name, price) 
VALUES 
	(102, 'Maggi Atta Noodles',25.50);
    
INSERT INTO 
    products(product_id, name, price) 
VALUES 
	(103, 'Maggi Chicken Noodles',9999.99);
    
INSERT INTO 
    products(product_id, name, price) 
VALUES 
	(104, 'Kissan Apple Juice',9999.999); -- out of range 
    
INSERT INTO 
    products(product_id, name, price) 
VALUES 
	(105, 'Kissan Mango Juice',99999.99);  -- out of range 

SELECT 
    product_id, name, price
FROM
    products;
    
    
    
    
CREATE TABLE bookings (
    bookind_id INT,
    train_no INT,
    train_name VARCHAR(50),
    data_of_journey DATE,
    departure_time TIME,
    booking_date_time DATETIME
);

INSERT INTO 
    bookings (bookind_id, train_no, train_name, data_of_journey, departure_time, booking_date_time) 
VALUES 
    (101, 20703,'YPR Vandhe Bharath', '2026-11-20' ,'05:45','2026-11-19 10:34:55');
INSERT INTO 
     bookings (bookind_id, train_no, train_name, data_of_journey, departure_time, booking_date_time) 
VALUES 
     (102, 12785,'KCG AP SF EXP', '2026-11-20' ,'19:05','2026-11-19 22:34:55');
INSERT INTO 
     bookings (bookind_id, train_no, train_name, data_of_journey, departure_time, booking_date_time) 
VALUES 
     (103, 22692,'SBC RAJDHANI', '2026-11-20' ,'17:25','2026-11-19 14:46:20');
INSERT INTO 
     bookings (bookind_id, train_no, train_name, data_of_journey, departure_time, booking_date_time) 
VALUES 
     (104, 17603,'KCG YNK EXP', '2026-11-20' ,'21:05','2026-11-19 ');
     
INSERT INTO 
     bookings (bookind_id, train_no, train_name, data_of_journey, departure_time, booking_date_time) 
VALUES 
     (105, 18261,'BSP YNK EXPRESS', '2026-11-20' ,'06:05', NOW());
     
SELECT CURRENT_DATE() ,CURRENT_TIME(), NOW(), CURDATE(), CURTIME();

SELECT 
    bookind_id,
    train_no,
    train_name,
    data_of_journey,
    departure_time,
    booking_date_time
FROM
    bookings;
    
    
CREATE TABLE test_1 (
    date_1 DATETIME,
    date_2 TIMESTAMP
);

INSERT INTO test_1 VALUES (NOW(), NOW());

SET time_zone  = "+05:30";  -- indian time 
SET time_zone  = "-05:00";   -- us time

-- NO DIFFERENCE IN DATETIME ONLY TIMESTAMP WILL CHANGES IF WE CHAGE THE TIME ZONE
SELECT 
    date_1, date_2
FROM
    test_1;