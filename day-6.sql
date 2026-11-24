USE cdg_jfs_hyd_059;

DROP TABLE passports;
DROP TABLE persons;

-- ONE TO ONE (Mandatory)
CREATE TABLE persons (
    person_id INT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    middle_name VARCHAR(100),
    last_name VARCHAR(100) NOT NULL,
    gender CHAR(1) NOT NULL CHECK (gender IN ('M','F')),
    date_of_birth DATE NOT NULL
);

CREATE TABLE passports (
    passport_id INT PRIMARY KEY,
    passport_number CHAR(6) NOT NULL,
    date_of_issue DATE NOT NULL,
    date_of_expiry DATE NOT NULL,
    type CHAR(1) NOT NULL CHECK (type IN ('P','S','D')),
    person_id INT UNIQUE NOT NULL ,
    FOREIGN KEY(person_id) REFERENCES  persons(person_id)
);

-- APLICANT 1 DETAILS
INSERT INTO 
      persons(person_id, first_name,middle_name, last_name, gender, date_of_birth) 
VALUES
      (101,'Akash', 'Singh','Chauhan','M','1989-10-22');
      
INSERT INTO 
      passports(passport_id, passport_number,date_of_issue, date_of_expiry, type, person_id) 
VALUES
      (201,'KH1234','2026-11-24','2036-11-23','P','101');
      
-- APLICANT 2 DETAILS
INSERT INTO 
      persons(person_id, first_name,middle_name, last_name, gender, date_of_birth) 
VALUES
      (102,'Gaurav', NULL,'Kapoor','M','1988-5-10');
      
INSERT INTO 
      passports(passport_id, passport_number,date_of_issue, date_of_expiry, type, person_id) 
VALUES
      (202,'AK5678','2026-11-24','2036-11-23','P','102');
      
-- APLICANT 3 DETAILS
INSERT INTO 
      persons(person_id, first_name,middle_name, last_name, gender, date_of_birth) 
VALUES
      (103,'Bharath', NULL,'Sharma','M','1989-01-10');
      
-- APLICANT 4 DETAILS
INSERT INTO 
      persons(person_id, first_name,middle_name, last_name, gender, date_of_birth) 
VALUES
      (104,'Tharun', NULL,'Gutta','M','1989-01-20');
      
-- 
INSERT INTO 
      passports(passport_id, passport_number,date_of_issue, date_of_expiry, type, person_id) 
VALUES
      (203,'BH2233','2026-11-24','2036-11-23','P',NULL);
      
INSERT INTO 
      passports(passport_id, passport_number,date_of_issue, date_of_expiry, type, person_id) 
VALUES
      (204,'JN9888','2026-11-24','2036-11-23','P',102);
      

SELECT * FROM persons;
SELECT * FROM passports;



-- ONE TO ONE (optional)
CREATE TABLE employee (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    parking_space_id INT,
    FOREIGN KEY (parking_space_id) REFERENCES parking_spaces(parking_space_id)
);

CREATE TABLE parking_spaces (
    parking_space_id INT PRIMARY KEY,
    slot_number INT NOT NULL UNIQUE ,
    basement_level INT NOT NULL
);

DROP TABLE employee;
DROP TABLE parking_spaces;

INSERT INTO 
     parking_spaces(parking_space_id,slot_number, basement_level ) 
VALUES 
     (201,1001,1 ),
     (202,1002,1 ),
     (203,1003,1 ),
     (204,1004,1 ),
     (205,1005,1 ),
     (206,2001,2 ),
     (207,2002,2 ),
     (208,2003,2 ),
     (209,2004,2 ),
     (210,2005,2 ),
     (211,3001,3 ),
     (212,3002,3 ),
     (213,3003,3 ),
     (214,3004,3 ),
     (215,3005,3 );
     
-- 7 EMPLOYESS WITH PARKING SPACE
INSERT INTO 
    employee(employee_id,first_name, last_name, parking_space_id) 
VALUES 
    (101, 'Akhst','Kumar',205),
	(103, 'Neha','Gupta',204),
	(105, 'Ravi','Kumar',210),
    (107, 'Neha','Gupta',209),
    (104, 'Ravi','Kumar',215),
    (109, 'Varsha','Gupta',214),
    (111,'Himanshu','Gupta',204);

-- 4 EMPLOYESS WITHOUT PARKING SPACE
INSERT INTO 
    employee(employee_id,first_name, last_name ) 
VALUES 
    (102, 'Gaurav','Kapoor'),
	(106, 'Akansha','Jain'),
    (108, 'Namrata','Kain'),
    (110, 'Ankit','Verma');

SELECT 
	employee_id, first_name, last_name,slot_number, basement_level
FROM
	employee
JOIN
	parking_spaces
USING
    (parking_space_id);


SELECT * FROM employee;
SELECT * FROM parking_spaces;