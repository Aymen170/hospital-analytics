select 
  id,
  nom,
  sexe,
  age,
  date_admission,
  current_date - date_admission as days_hospitalized
from {{ source('hospital_analytics_schema', 'patients') }}
where date_admission is not null
