use cdg_jfs_hyd_059;

DROP TABLE customers;

CREATE TABLE customers (
    customer_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender CHAR(1),
    date_of_birth DATE,
    email_address VARCHAR(200),
    mobile_number CHAR(10)
);


-- CONSTRAINTS
  -- NOT NULL, UNIQUE, CHECK , PRIMARY KEY , FORIEGN KEY , NULL
  
CREATE TABLE customers (
    customer_id INT UNIQUE NOT NULL ,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50),
    gender CHAR(1) NOT NULL CHECK (gender IN ('M','F')),
    date_of_birth DATE,
    email_address VARCHAR(200) UNIQUE,
    mobile_number CHAR(10) UNIQUE NOT NULL CHECK(CHAR_LENGTH(mobile_number)= 10)
);

DESCRIBE customers;

SHOW CREATE TABLE customers;

-- RECORD 1
INSERT INTO 
      customers (customer_id ,first_name ,last_name ,gender ,date_of_birth ,email_address,mobile_number) 
VALUES 
    (101, 'Neha','Gupta', 'F','1990-12-31','nehagupta@gmail.com','1234567890');
    
-- RECORD 2
INSERT INTO 
      customers (customer_id ,first_name ,last_name ,gender ,date_of_birth ,email_address,mobile_number) 
VALUES 
    (102, 'Ankit','Verma', 'M','1990-12-31','ankitverma@gmail.com','3214567890');
    
-- RECORD 3
INSERT INTO 
      customers (customer_id,first_name ,last_name ,gender ,date_of_birth ,email_address,mobile_number) 
VALUES 
    (103, 'Varsha','Gupta', 'F','1990-12-31','varshagupta@gmail.com','3214567089');
    
-- RECORD 4
INSERT INTO 
      customers ( customer_id,first_name ,last_name ,gender ,date_of_birth ,email_address,mobile_number) 
VALUES 
    ( 104,'Gurav','Khan', 'M','1990-12-31','guaravkhan@gmail.com','3214765890');
    
-- RECORD 5
INSERT INTO 
      customers (customer_id) 
VALUES 
    (105);
    
-- RECORD 6
INSERT INTO 
      customers (customer_id ,first_name,last_name ,gender ,date_of_birth ,email_address,mobile_number) 
VALUES 
    (106,'Tharun' ,'Gupta', 'F','1990-12-31','ravigupta@gmail.com','3214567789');
    
-- RECORD 7
INSERT INTO 
      customers (customer_id ,first_name ,gender ,date_of_birth ,email_address,mobile_number) 
VALUES 
    (107, 'Chetan', 'M','1990-12-31','chetansharma@gmail.com','3216547089');
    
DELETE FROM customers where email_address = 'varshagupta@gmail.com' AND customer_id = 106;

-- RECORD 8
INSERT INTO 
      customers (customer_id,first_name ,last_name ,gender ,date_of_birth ,email_address,mobile_number) 
VALUES 
    (108, 'Varsha','Gupta', 'F','1990-12-31','varshaguptaaa@gmail.com','3214567489');
    
-- RECORD 9
INSERT INTO 
      customers (customer_id,first_name ,last_name ,gender ,date_of_birth ,email_address,mobile_number) 
VALUES 
    (109, 'Ankit','Verma', 'M','1990-12-31','ankitkumarverma@gmail.com','5555567089');
    
-- RECORD 10
INSERT INTO 
      customers (customer_id,first_name ,last_name ,gender ,date_of_birth ,email_address,mobile_number) 
VALUES 
    (110, 'Virat','Kohli', 'M','1990-12-31','viratkohli@gmail.com','5555557089');
    
-- RECORD 11
INSERT INTO 
      customers (customer_id,first_name ,last_name ,gender ,date_of_birth ,email_address,mobile_number) 
VALUES 
    (111, 'Rohit','Sharma', 'M','1990-12-31','rohitsharma@gmail.com','9392618109');

DELETE FROM customers where email_address = 'rohitsharma@gmail.com' AND customer_id = 110;

SELECT 
   customer_id ,
    first_name ,
    last_name ,
    gender ,
    date_of_birth ,
    email_address,
    mobile_number
FROM 
   customers;