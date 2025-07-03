# **HospitalAnalytics**
A simulated data pipeline for hospital operations using Snowflake, dbt, and Python. It includes fake data generation, transformations, and analytics to uncover insights about patients, doctors, and hospitalizations.

## Project Overview
HospitalAnalytics is a personal data engineering project that simulates hospital activity and patient data. It showcases the modern data workflow — from synthetic data generation to SQL-based transformation and Python-based statistical analysis — all designed to support healthcare decision-making scenarios.

## Tech Stack

  Languages: Python 3.10, SQL
  
  Libraries: pandas, faker, matplotlib, numpy, snowflake-connector-python
  
  Data Warehouse: Snowflake
  
  Transformation Tool: dbt (Data Build Tool)
  
  Visualization: Tableau Desktop (Free version)
  
  Version Control: Git & GitHub
  
# Repository Structure

    HospitalAnalytics/
    ├── data/
    │   └── csv/
    │       ├── patients.csv
    │       ├── doctors.csv
    │       ├── hospitalizations.csv
    │       ├── admissions_by_month.csv
    ├── generate_fake_data.py              # Python script for simulating hospital data
    ├── analyze_results.py                 # Python script for querying Snowflake and generating visualizations
    ├── dbt/
    │   └── hospital_analytics/
    │       ├── dbt_project.yml
    │       └── models/
    │           ├── patients_demographics.sql
    │           ├── patients_admissions_by_month.sql
    │           ├── patients_hospitalizations.sql
    ├── export/                            # Exported data from Snowflake (e.g., .csv.gz)
    ├── dashboard.twb                      # Tableau dashboard file
    └── README.md
    
# Workflow Summary
## 1. Data Generation (generate_fake_data.py)
  Simulates healthcare data using Faker, pandas, and numpy:
  
    - 500 patients: ID, name, gender, birthdate, admission dates, etc.
  
    - 100 doctors: name, specialty
  
    - 1000 hospitalizations: patient ID, doctor ID, diagnosis, length of stay
  
  Outputs: patients.csv, doctors.csv, hospitalizations.csv, admissions_by_month.csv

## 2. Load to Snowflake
  
  - Connects with snowflake-connector-python
  
  - Creates a HOSPITAL_ANALYTICS_DB with a RAW schema
  
  - Loads CSVs into internal stages
  
  - Uses COPY INTO to insert data into Snowflake tables

## 3. Transform Data with dbt
  
  Performs SQL transformations using a custom dbt project:
  
    - patients_demographics.sql: Counts patients by gender
  
    - patients_admissions_by_month.sql: Aggregates admissions by month
  
    - patients_hospitalizations.sql: Calculates average length of stay

## 4. Analyze Results (analyze_results.py)

Connects to Snowflake, queries transformed tables, and generates visualizations:

    - Monthly admissions trend (bar chart)
  
    - Gender distribution (pie or bar chart)
  
    - Average stay duration (line chart)

    - Visuals generated using Matplotlib and saved locally.

## 5. Visualize with Tableau

Data exported from Snowflake is used to build an interactive Tableau dashboard:

    - KPIs (e.g., total admissions, average stay)

    - Gender and age demographics

    - Admissions over time

# 👨‍💻 Author
***Aymane RAMI***

**Data & Software Engineering Enthusiast**

