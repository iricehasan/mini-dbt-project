-- macros/revenue.sql

{% macro revenue(quantity_col, price_col) %}
    {{ quantity_col }} * {{ price_col }}
{% endmacro %}