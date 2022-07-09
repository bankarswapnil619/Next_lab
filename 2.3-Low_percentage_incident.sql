select extract(hour from date_time) as UTC_hour ,extract(hour from addtime(date_time,"5:30:00:00000") )as IST_hour,sum(case when instance_id!=0 then 1 else 0 end)/count(*)*100 as Percentage_incident_with_non_null_value
from nextlab.problem2
group by IST_hour
order by Percentage_incident_with_non_null_value 

