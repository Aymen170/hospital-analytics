
  create or replace   view HOSPITAL_ANALYTICS_DB.hospital_analytics_schema.patients_demographics
  
   as (
    select
  sexe,
  case
    when age between 0 and 17 then '0-17'
    when age between 18 and 35 then '18-35'
    when age between 36 and 60 then '36-60'
    else '60+'
  end as age_group,
  count(*) as nb_patients
from hospital_analytics_db.hospital_analytics_schema.patients
group by 1, 2
order by 1, 2
  );

