🏥 Hospital_Analytics
Projet personnel — par Aymane RAMI (2025)

🎯 Objectif
Simuler un pipeline analytique complet pour un hôpital fictif :
génération de données de santé → ingestion dans Snowflake → transformation avec dbt → visualisation avec Tableau.

🛠️ Stack technique
Python : génération de données (Faker, Pandas, NumPy)

Snowflake : entrepôt de données cloud

dbt : transformations SQL & modélisation

Tableau : visualisation des données

SnowSQL : chargement et export de données

Git/GitHub : versioning

📁 Structure du projet
bash
Copier
Modifier
hospital_analytics/
├── data/csv/                  # Fichiers générés (patients, doctors, etc.)
├── data_generator.py          # Script principal de génération
├── dbt/hospital_analytics/    # Projet dbt (modèles, config)
└── README.md
✅ Fonctionnement
Génération : création de données synthétiques (patients, médecins, hospitalisations…)

Chargement : envoi des fichiers CSV dans Snowflake via SnowSQL

Modélisation : création de vues analytiques avec dbt (ex : admissions par mois)

Export/Visualisation : extraction CSV → visualisation dans Tableau

🚧 Améliorations prévues
Automatisation complète (GitHub Actions)

Connexion live Tableau ↔️ Snowflake

Enrichissement des dashboards (KPI santé)

Tests de qualité & reporting automatique

📌 Conclusion
Hospital_Analytics illustre un pipeline de données de bout en bout, combinant des outils modernes de la data.
Un projet extensible, adapté aux cas d’usage en data engineering ou BI dans la santé.