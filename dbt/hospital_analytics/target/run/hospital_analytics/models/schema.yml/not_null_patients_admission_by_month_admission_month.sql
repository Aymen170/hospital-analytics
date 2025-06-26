
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select admission_month
from HOSPITAL_ANALYTICS_DB.hospital_analytics_schema.patients_admission_by_month
where admission_month is null



  
  
      
    ) dbt_internal_test