{% macro rename_category(column_name) %}

case
  when {{ column_name }} ilike  '%vehicle%' then 'VEHICLE'
  else {{column_name}}
end as replaced_product

{% endmacro %}