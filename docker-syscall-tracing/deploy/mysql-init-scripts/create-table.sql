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
INSERT INTO sample_table (name, age, email) VALUES ('John Doe', 30, 'john@example.com');
INSERT INTO sample_table (name, age, email) VALUES ('Jane Smith', 25, 'jane@example.com');
