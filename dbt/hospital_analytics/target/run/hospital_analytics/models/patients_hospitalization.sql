
  create or replace   view HOSPITAL_ANALYTICS_DB.hospital_analytics_schema.patients_hospitalization
  
   as (
    select 
  id,
  nom,
  sexe,
  age,
  date_admission,
  current_date - date_admission as days_hospitalized
from hospital_analytics_db.hospital_analytics_schema.patients
where date_admission is not null
  );

