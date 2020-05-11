
-- Use the `ref` function to select from other models
{{ config(materialized='table') }}
{% set column_name = 'INCIDENT_TYPE' %}
select {{rename_category(column_name)}}
from {{ ref('t2') }}

