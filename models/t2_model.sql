with claims as (
    SELECT * FROM GATHI_DB.GATHI_DATA.CLAIMS
)

select
    policy_number,
    incident_type,
    collision_type,
    incident_city,
    police_report_available,
    incident_state 
from claims