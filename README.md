# Student Data Analysis

## Overview

This project provides SQL queries for exploring and analyzing a student dataset stored in a table named `student_data`. The dataset includes students’ scores in Math, Physics, and Chemistry, along with their grades and comments.

## File

- **`Student_Data.sql`**: Contains SQL queries used to:
  - Explore the dataset
  - Perform various analyses such as top performers, averages, failure counts, and grade distributions

## Sections

### 1. **Exploration Queries**
These queries help understand the structure and quality of the dataset:
- View all records and the first 10 rows
- Describe data types and check for nulls
- Count total records and unique grades
- Detect duplicate roll numbers
- Analyze distribution of comments
- Identify missing or anomalous subject data

### 2. **Analysis Queries**
These queries derive insights from the data:
- **Top Performers**: Identify top 5 students by total marks
- **Subject Averages**: Compute average scores in Math, Physics, and Chemistry
- **Subject Toppers**: Find highest scorers in each subject
- **Grade Distribution**: Count of students per grade
- **Failures**: Count students who received a failing grade ('F')
- **Consistent High Scorers**: Students scoring above 80 in all subjects
- **Ranking**: Rank students by average score
- **Pass List**: List students who passed (Grade not 'F')
- **Grade-wise Performance**: Average performance per grade
- **Low Performance Comments**: Identify students with comment 'Poor Pursuance'

## Usage

To run this script:
1. Ensure you have a table named `student_data` with appropriate fields (`Student_Names`, `Roll_No`, `Math`, `Physics`, `Chemistry`, `Grade`, `Comment`).
2. Use any SQL environment (like MySQL Workbench, PostgreSQL, or SQLite) to execute the queries.
3. Review and adapt queries if your column names or types differ.

## Notes

- Adjust scoring thresholds or logic as per your institution’s standards.
- Ensure the dataset is cleaned and indexed for optimal performance on large records.
