CREATE DATABASE task2;
USE task2;
CREATE TABLE countries(
Country_id INT NOT NULL PRIMARY KEY,
Country_name varchar(50) NOT NULL,
Region_id INT NOT NULL
);
CREATE TABLE job(
job_id INT NOT NULL PRIMARY KEY,
job_title varchar(60) NOT NULL,
Min_salary INT NOT NULL DEFAULT 8000,
Max_salary INT 
);
CREATE TABLE employee(
Employee_id INT NOT NULL PRIMARY KEY,
First_name varchar(50) NOT NULL,
Last_name varchar(50) NOT NULL,
Email varchar(60) NOT NULL,
Phone_number INT NOT NULL,
Hire_date date NOT NULL,
Job_id INT NOT NULL,
Salary INT NOT NULL,
Commission INT NOT NULL,
Manager_id INT NOT NULL,
Department_id INT NOT NULL
);
INSERT INTO countries (Country_id,Country_name,Region_id) values(1,'INDIA',201);
INSERT INTO job(job_id,job_title,Min_salary,Max_salary) values (101,'IT',10000,90000);
/*!INSERT INTO job(job_id,job_title,Min_salary,Max_salary) values (101,'Core',9000,95000)*/;
ALTER TABLE countries RENAME TO country_new;
SELECT Country_id AS "Country ID" FROM country_new;
SELECT Country_name AS "Country Name" FROM country_new;
SELECT * FROM country_new ORDER BY Country_name desc;