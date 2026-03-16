# Student Performance SQL Analysis

## Project Overview

This SQL project analyzes student performance using a simple student
database. The project demonstrates fundamental SQL skills such as
database creation, data insertion, aggregation queries, grouping,
sorting, and updating records.

## Tools Used

-   MySQL
-   SQL

## Database Structure

**Database Name:** StudentManagement

**Table:** Students

  Column         Description
  -------------- ------------------------------
  StudentID      Primary Key (Auto Increment)
  Name           Student name
  Gender         Gender of the student
  Age            Age of the student
  Grade          Class/grade of the student
  MathScore      Marks in Mathematics
  ScienceScore   Marks in Science
  EnglishScore   Marks in English

## SQL Tasks Performed

1.  Created a database for student management
2.  Created a Students table with appropriate columns
3.  Inserted sample student records
4.  Displayed all student details
5.  Calculated average subject scores by grade
6.  Identified top-performing students
7.  Counted number of students per grade
8.  Calculated average total score by gender
9.  Updated grade values in the table

## Example Query (Top Performers)

``` sql
SELECT 
Name,
(MathScore + ScienceScore + EnglishScore) AS TotalScore
FROM Students
ORDER BY TotalScore DESC
LIMIT 3;
```

## Skills Demonstrated

-   Database creation
-   Table design
-   Data insertion
-   Data aggregation (AVG, COUNT)
-   Grouping data using GROUP BY
-   Calculated columns
-   Sorting results with ORDER BY
-   Updating records using UPDATE

## Project Purpose

This project demonstrates basic SQL analysis skills commonly required
for entry-level Data Analyst roles. It shows how SQL can be used to
structure data and perform simple analytical queries.

## Author

Shivam Yadav\
GitHub: https://github.com/shivam77y
