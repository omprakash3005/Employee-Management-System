-- Employee Management System - Database Setup
-- MySQL Workbench: root/root@localhost:3306
-- Copy and paste this entire script into MySQL Workbench and execute

-- Create database
CREATE DATABASE IF NOT EXISTS employeemanagementsystem;
USE employeemanagementsystem;

-- Create login table
CREATE TABLE IF NOT EXISTS login (
    username VARCHAR(50) PRIMARY KEY,
    password VARCHAR(50) NOT NULL
);

-- Create employee table
CREATE TABLE IF NOT EXISTS employee (
    name VARCHAR(100),
    fname VARCHAR(100),
    dob VARCHAR(50),
    salary VARCHAR(50),
    address VARCHAR(200),
    phone VARCHAR(20),
    email VARCHAR(100),
    education VARCHAR(50),
    designation VARCHAR(100),
    aadhar VARCHAR(20),
    empId VARCHAR(10) PRIMARY KEY
);

-- Insert default admin user
INSERT IGNORE INTO login VALUES ('admin', 'admin123');

-- Verify setup
SELECT 'Database setup complete!' as Status;
SELECT 'Default login: admin / admin123' as Info;
SHOW TABLES;
