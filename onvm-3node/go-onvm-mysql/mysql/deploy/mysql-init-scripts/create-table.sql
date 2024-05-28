-- create_database_and_table_with_inserts.sql

CREATE DATABASE IF NOT EXISTS sample_db;

USE sample_db;

CREATE TABLE IF NOT EXISTS sample_table (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    email VARCHAR(100)
);

-- Sample insert statements
INSERT INTO sample_table (name, age, email) VALUES 
('John Doe', 30, 'john@example.com'),
('Jane Smith', 25, 'jane@example.com'),
('Tom White', 35, 'tom@example.com'),
('Alice Brown', 40, 'alice@example.com'),
('Bob Green', 45, 'bob@example.com'),
('Kate Black', 50, 'kate@example.com'),
('Mike Grey', 55, 'mike@example.com'),
('Linda Pink', 60, 'linda@example.com'),
('Steve Purple', 65, 'steve@example.com'),
('Mary Yellow', 70, 'mary@example.com'),
('David Orange', 75, 'david@example.com'),
('Sara Red', 80, 'sara@example.com'),
('Paul Blue', 85, 'paul@example.com'),
('Sam Gold', 90, 'sam@example.com'),
('Emily Silver', 95, 'emily@example.com')
;
