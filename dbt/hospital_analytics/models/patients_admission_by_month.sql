select
  date_trunc('month', date_admission) as admission_month,
  count(distinct id) as nb_patients
from {{ source('hospital_analytics_schema', 'patients') }}
where date_admission is not null
group by 1
order by 1
