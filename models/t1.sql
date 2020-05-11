with carrier as (
    SELECT * FROM GATHI_DB.GATHI_DATA.CARRIER_DATA
),
claims as (
    SELECT * FROM GATHI_DB.GATHI_DATA.CLAIMS
)

select a.* from carrier a
left join claims b on a.sourceid = b.policy_number
