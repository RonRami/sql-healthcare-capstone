# sql-healthcare-capstone

A SQL-based analysis of healthcare data to identify high-risk patients, visit trends, and diagnosis insights.

## Project Overview

This project demonstrates SQL skills by building a healthcare database schema and running analytical queries to identify high-risk patients based on their visit history, vital signs, and diagnoses. The goal is to showcase abilities in schema design, complex query writing, and data aggregation for actionable healthcare insights.

## Repository Structure

- `schema/`  
  Contains the SQL script to create the core database tables: `patients`, `visits`, and `diagnoses`.

- `queries/`  
  Includes SQL queries analyzing patient risk factors, visit summaries, and diagnosis frequency.

- `data/` (optional)  
  Placeholder for mock data insertion scripts if needed in the future.

- `README.md`  
  This file — explains the project purpose, structure, and usage.

## Schema Description

- **patients**: Stores patient demographic information (`patient_id`, `name`, `date_of_birth`).

- **visits**: Records patient visits with date, blood pressure, and cholesterol readings. Linked to patients via `patient_id`.

- **diagnoses**: Tracks diagnoses and prescriptions for patients with dates, linked by `patient_id`.

Foreign keys enforce referential integrity between tables.

## Key Queries

- **patient_risk_analysis.sql**: Flags patients with multiple visits, elevated vitals, and frequent diagnoses as high-risk for targeted intervention.

- **frequent_visits_flag.sql**: Identifies patients with a high number of visits in the year.

- **patient_diagnosis_and_prescription_filter.sql**: Finds patients with multiple diagnoses and prescriptions in the year.

## How to Use

1. Create the database and run the schema script to set up tables.

2. Load data into the tables (either real or mock data).

3. Run the SQL queries in the `queries/` folder to generate analysis reports.

4. Modify and extend queries as needed for additional insights.

## Skills Demonstrated

- SQL schema design and normalization  
- Complex joins and aggregations  
- Use of CTEs (WITH clauses) for modular queries  
- Filtering and conditional logic  
- Clear and maintainable SQL organization for collaborative projects

## Contact / Questions

Feel free to reach out if you'd like to discuss this project or request enhancements.

