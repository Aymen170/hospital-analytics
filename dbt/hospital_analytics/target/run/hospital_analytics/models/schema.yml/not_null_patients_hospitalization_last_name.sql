
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select last_name
from HOSPITAL_ANALYTICS_DB.hospital_analytics_schema.patients_hospitalization
where last_name is null



  
  
      
    ) dbt_internal_test