🏥 Hospital_Analytics
Personal project — by Aymane RAMI (2025)

🎯 Project Goal
Simulate a full data pipeline for a fictional hospital:
health data generation → ingestion into Snowflake → transformation using dbt → visualization with Tableau.

🛠️ Tech Stack
Python: data generation (Faker, Pandas, NumPy)

Snowflake: cloud data warehouse

dbt: SQL transformations & modeling

Tableau: data visualization

SnowSQL: data loading and exporting

Git/GitHub: version control

📁 Project Structure
bash
Copier
Modifier
hospital_analytics/
├── data/csv/                  # Generated CSV files (patients, doctors, etc.)
├── data_generator.py          # Main data generation script
├── dbt/hospital_analytics/    # dbt project (models, config)
└── README.md
✅ Workflow
Data Generation: simulate realistic data (patients, doctors, hospital stays…)

Loading: upload CSV files to Snowflake using SnowSQL

Modeling: create analytical views with dbt (e.g., monthly admissions)

Export/Visualization: export results → visualize in Tableau

🚧 Future Improvements
Full pipeline automation (via GitHub Actions or similar)

Live Tableau ↔️ Snowflake connection

Dashboard enrichment (e.g., healthcare KPIs)

Data testing & automated reporting

📌 Conclusion
Hospital_Analytics showcases an end-to-end analytics pipeline using modern data tools.
The project is a solid foundation for real-world applications in data engineering or BI in healthcare, and can be extended significantly.