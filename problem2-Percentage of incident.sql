select date(date_time) as Incident_date,count(*) as Total_no_of_incident, sum(case when instance_id!=0 then 1 else 0 end) as Incident_with_incident_id,sum(case when instance_id!=0 then 1 else 0 end)/count(*)*100 as Percentage_incident_with_non_null_value
 FROM nextlab.problem2
 where instance_id IS NOT null
 group by Incident_date
 ;