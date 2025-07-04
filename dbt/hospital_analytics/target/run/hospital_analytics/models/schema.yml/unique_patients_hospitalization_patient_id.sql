
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    patient_id as unique_field,
    count(*) as n_records

from HOSPITAL_ANALYTICS_DB.hospital_analytics_schema.patients_hospitalization
where patient_id is not null
group by patient_id
having count(*) > 1



  
  
      
    ) dbt_internal_test