-- ==============================
-- STUDENT MANAGEMENT SQL PROJECT
-- ==============================

-- Database creation
CREATE DATABASE StudentManagement;

-- Use Database
USE StudentManagement;

-- Create table
CREATE TABLE Students (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50),
    Gender VARCHAR(10),
    Age INT,
    Grade VARCHAR(10),
    MathScore INT,
    ScienceScore INT,
    EnglishScore INT
);

-- Insert Data
INSERT INTO Students (Name, Gender, Age, Grade, MathScore, ScienceScore, EnglishScore)
VALUES
('Rahul', 'Male', 16, '10A', 85, 78, 90),
('Anjali', 'Female', 15, '10A', 92, 88, 84),
('Aman', 'Male', 16, '10B', 76, 81, 79),
('Priya', 'Female', 15, '10B', 89, 94, 91),
('Rohan', 'Male', 17, '11A', 68, 72, 70),
('Sneha', 'Female', 16, '11A', 95, 93, 96),
('Vikas', 'Male', 17, '11B', 80, 85, 82),
('Pooja', 'Female', 16, '11B', 87, 90, 88),
('Arjun', 'Male', 15, '10A', 78, 75, 80),
('Neha', 'Female', 16, '10B', 91, 89, 92);


-- show all students details
select * from students;

-- Average score in each subject
SELECT 
Grade,
AVG(MathScore) AS Avg_Math,
AVG(ScienceScore) AS Avg_Science,
AVG(EnglishScore) AS Avg_English
FROM Students
GROUP BY Grade;


-- Highest top performer
SELECT 
Name,
(MathScore + ScienceScore + EnglishScore) AS TotalScore
FROM Students
ORDER BY TotalScore DESC
LIMIT 3;

-- Count students per grade
select Grade,count(*)
from students
group by Grade;


-- avg score by gender
SELECT 
Gender,
AVG(MathScore + ScienceScore + EnglishScore) AS Avg_TotalScore
FROM Students
GROUP BY Gender;

-- update grade
UPDATE Students
SET Grade = '10C'
WHERE Grade = '10A';