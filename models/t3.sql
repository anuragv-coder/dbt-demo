with client as (
    SELECT * FROM GATHI_DB.GATHI_DATA.CLIENT
),
t2 as (
    select * from {{ ref('t2') }}
)

select c.* from client c
left join t2 on lower(t2.incident_state)=lower(c.STATECODE)
    