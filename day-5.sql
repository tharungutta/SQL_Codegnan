USE cdg_jfs_hyd_059;

-- SINGLE TABLE WITHOUT FORIEGN KEY AND PRIMARY KEY

CREATE TABLE employees (
    employee_id INT UNIQUE NOT NULL,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_assigned VARCHAR(50)
);

DESCRIBE employees;

SHOW CREATE TABLE employees;

INSERT INTO 
      employees (employee_id, first_name, last_name, department_assigned ) 
VALUES 
     (101, 'Neha', 'Gupta', 'HR'),
     (102, ' Varsha', 'Gupta', 'HR'),
     (103, 'Bharath', 'Sharma', 'Admin'),
     (104, 'Gaurav', 'Kumar', 'Admin'),
     (105, 'Akshat', 'Kumar', 'IT'),
     (106, 'Gaurav', 'Kapoor', 'IT'),
     (107, 'Jeevan', 'Sharma', 'Finance'),
     (108, 'Anand', 'Kumar', 'Finance'),
     (109, 'Ravi', 'Kumar', 'Development'),
     (110, 'Ashish', 'Bakshi', 'Development');
     
INSERT INTO 
      employees (employee_id, first_name, last_name, department_assigned ) 
VALUES 
     (111, 'Namrata', 'Jain', 'Human Resources');
     
INSERT INTO 
      employees (employee_id, first_name, last_name, department_assigned ) 
VALUES 
     (112, NULL, NULL, 'Transport'),
     (113, NULL, NULL, 'Security');
     
INSERT INTO 
      employees (employee_id, first_name, last_name, department_assigned ) 
VALUES 
     (114, 'Anil','Sharma', 'Transport'),
     (115, 'Manish','', 'Security');
     
SELECT
    employee_id ,
    first_name ,
    last_name ,
    department_assigned 
FROM
   employees;
  
