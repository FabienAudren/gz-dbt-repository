{% macro margin_percent(revenue, purchase_cost, decimal) %}
    ROUND(SAFE_DIVIDE({{revenue}}-{{purchase_cost}}, {{revenue}}), {{decimal}})
{% endmacro %}