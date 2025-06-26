
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select gender
from HOSPITAL_ANALYTICS_DB.hospital_analytics_schema.patients_demographics
where gender is null



  
  
      
    ) dbt_internal_test