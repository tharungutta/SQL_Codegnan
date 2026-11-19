USE cdg_jfs_hyd_059;

-- MYSQL SPECIFIC COMMANDAS

SHOW DATABASES;
SHOW TABLES;
DESCRIBE customers;
SHOW CREATE TABLE customers;

-- DQL

INSERT INTO 
    customers(customer_id, first_name, last_name) 
VALUES 
    (101, 'Tharun', 'Gutta');

INSERT INTO 
    customers(first_name, customer_id, last_name) 
VALUES 
    ('Ramu', 102, 'Karanam');

INSERT INTO 
    customers(first_name, last_name) 
VALUES 
    ('Mahebbob', 'Shaik');
    
INSERT INTO 
    customers 
VALUES 
     (103, 'Karrii', 'Mulla'); 
     
-- INSERT INTO customers VALUES ( 'Karrii', 104, 'Mulla');   Incorrect intger value for column_1 : customer_id

INSERT INTO 
    customers(customer_id, first_name, last_name) 
VALUES 
    (104, 'Teja', 'Gutta'), 
    (105, 'Tharun', 'Challa'), 
    (106, 'Yeswanth', 'Challa');
    
UPDATE customers 
SET 
    last_name = 'Verma';
    
UPDATE customers 
SET 
    last_name = 'Sharma'
WHERE
    customer_id = 101;
    
UPDATE customers SET last_name = 'Sharma' WHERE customer_id = 111;  -- 0 rows effected , no error 

UPDATE customers 
SET 
    last_name = 'Sharma'
WHERE
    first_name = 'Teja';
    
UPDATE customers 
SET 
    customer_id = 110,
    last_name = 'Gupta'
WHERE
    first_name = 'Mahebbob';
    
DELETE FROM customers;

DELETE FROM customers 
WHERE
    customer_id = 105;
    
DELETE FROM customers WHERE customer_id = 108;  -- no error , 0 rows effected  

SELECT 
    customer_id, first_name, last_name
FROM
    customers;


