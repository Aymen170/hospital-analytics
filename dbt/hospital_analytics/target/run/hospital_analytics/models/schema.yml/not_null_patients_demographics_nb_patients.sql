
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select nb_patients
from HOSPITAL_ANALYTICS_DB.hospital_analytics_schema.patients_demographics
where nb_patients is null



  
  
      
    ) dbt_internal_test