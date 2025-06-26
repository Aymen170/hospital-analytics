
    
    

select
    patient_id as unique_field,
    count(*) as n_records

from HOSPITAL_ANALYTICS_DB.hospital_analytics_schema.patients_hospitalization
where patient_id is not null
group by patient_id
having count(*) > 1


