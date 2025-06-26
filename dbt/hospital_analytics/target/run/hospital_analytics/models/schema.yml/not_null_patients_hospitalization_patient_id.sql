
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select patient_id
from HOSPITAL_ANALYTICS_DB.hospital_analytics_schema.patients_hospitalization
where patient_id is null



  
  
      
    ) dbt_internal_test