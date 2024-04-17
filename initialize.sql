DROP DATABASE IF EXISTS harmonyIDE;

CREATE DATABASE harmonyIDE;
USE harmonyIDE;

CREATE TABLE Users (
                       id INT AUTO_INCREMENT PRIMARY KEY,
                       username VARCHAR(255) NOT NULL UNIQUE,
                       password VARCHAR(255) NOT NULL,
                       email VARCHAR(255) NOT NULL UNIQUE,
                       nickname VARCHAR(255) NOT NULL,
                       language VARCHAR(100) DEFAULT '',
                       created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
                       updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
                       status ENUM('active', 'inactive', 'suspended') DEFAULT 'active'
);