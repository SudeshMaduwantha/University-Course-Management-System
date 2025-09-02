-- Create database if not exists
CREATE DATABASE IF NOT EXISTS university_db;
USE university_db;

-- Create users table (adjust based on your actual entity structure)
CREATE TABLE IF NOT EXISTS users (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    role VARCHAR(20) NOT NULL,
    avatar VARCHAR(1) DEFAULT 'U',
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create courses table
CREATE TABLE IF NOT EXISTS courses (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    course_code VARCHAR(10) UNIQUE NOT NULL,
    title VARCHAR(100) NOT NULL,
    description TEXT,
    credits INTEGER DEFAULT 3,
    instructor VARCHAR(100),
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert demo users (passwords are hashed for 'password123')
INSERT IGNORE INTO users (id, username, password, email, first_name, last_name, role, avatar) VALUES
(1, 'admin', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2uheWG/igi.', 'admin@university.edu', 'System', 'Administrator', 'ADMIN', 'A'),
(2, 'faculty', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2uheWG/igi.', 'faculty@university.edu', 'John', 'Professor', 'FACULTY', 'J'),
(3, 'student', '$2a$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2uheWG/igi.', 'student@university.edu', 'Jane', 'Student', 'STUDENT', 'J');

-- Insert sample courses
INSERT IGNORE INTO courses (id, course_code, title, description, credits, instructor) VALUES
(1, 'CS101', 'Introduction to Computer Science', 'Basic programming concepts and problem solving', 3, 'Dr. Smith'),
(2, 'MATH201', 'Calculus I', 'Differential and integral calculus', 4, 'Dr. Johnson'),
(3, 'ENG101', 'English Composition', 'Academic writing and communication skills', 3, 'Prof. Williams'),
(4, 'PHYS101', 'General Physics', 'Mechanics, thermodynamics, and waves', 4, 'Dr. Brown'),
(5, 'CHEM101', 'General Chemistry', 'Atomic structure and chemical bonding', 3, 'Dr. Davis');