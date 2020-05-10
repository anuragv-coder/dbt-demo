with t1 as (
    select * from {{ ref('t1_model') }}
),
t2 as (
    select * from {{ ref('t2_model') }}
),
t3 as (
    select * from {{ ref('t3_model') }}
),
policy as (
    SELECT * FROM GATHI_DB.GATHI_DATA.POLICY
)

select 
    distinct a.sourceid,a.name,b.policy_number,b.incident_type,b.collision_type,c.cityname,c.clientname,d.policymode 
from t1 a 
inner join t2 b on lower(a.city)=lower(b.incident_city) 
inner join t3 c on lower(b.incident_state)=lower(c.statecode)
inner join policy d on lower(d.policyrenewalstatus)=lower(b.police_report_available) 
where d.policyrenewalstatus='Yes'
