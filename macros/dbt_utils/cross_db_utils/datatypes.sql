{% macro athena__type_string() %}
    VARCHAR
{% endmacro %}

{% macro athena__type_float() %}
    DOUBLE
{% endmacro %}

{% macro athena__type_numeric() %}
    DECIMAL(
        28,
        6
    )
{% endmacro %}

{% macro athena_type_int() %}
    INTEGER
{% endmacro %}
