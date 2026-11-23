USE cdg_jfs_hyd_059;

DROP TABLE employees;

-- TWO TABLES WITH PRIMARY KEY AND FORIEGN KEY , PARENT TABLE -- PRIMARY , CHILD TABLE - FORIEGN KEY
 -- FIRST WE NEEED TO RUN CREATE PARENT TABLE/ PRIMARY KEY
    -- SECOND WE NEED TO RUN THE CHILD TABLE / FORIEGN KEY

CREATE TABLE employees (
    employee_id INT UNIQUE NOT NULL,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_assigned INT,
    FOREIGN KEY (department_assigned) REFERENCES departments (department_id)
);

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    name VARCHAR(50) UNIQUE NOT NULL
);

INSERT INTO 
      departments(department_id , name) 
VALUES 
     (201, 'HR'),
     (202, 'Admin'),
     (203, 'IT'),
     (204, 'Finance'),
     (205, 'Development'),
     (206, 'Transport'),
     (207, 'Security');

INSERT INTO 
      employees (employee_id, first_name, last_name, department_assigned ) 
VALUES 
     (101, 'Neha', 'Gupta', 201),
     (102, ' Varsha', 'Gupta', 201),
     (103, 'Bharath', 'Sharma', 202),
     (104, 'Gaurav', 'Kumar', 202),
     (105, 'Akshat', 'Kumar', 203),
     (106, 'Gaurav', 'Kapoor', 203),
     (107, 'Jeevan', 'Sharma', 204),
     (108, 'Anand', 'Kumar', 204),
     (109, 'Ravi', 'Kumar', 205),
     (110, 'Ashish', 'Bakshi', 205);
     
-- RETRIEVE LIST OF EMPLOYEES ALONG WITH DEPARTMENT THEY ARE ASSOCIATED WITH
SELECT 
	employee_id, first_name, last_name, name
FROM
	employees
JOIN
	departments
ON
	department_assigned = department_id;
  
-- RETRIEVE LIST OF DEAPRTMENTS ALONG WITH EMPLOYEES ASSIGNED TO IT
SELECT 
	employee_id, first_name, last_name, name
FROM
	departments
JOIN
	employees
ON
	department_id = department_assigned;