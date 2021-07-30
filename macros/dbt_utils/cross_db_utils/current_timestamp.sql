{% macro athena__current_timestamp() %}
    CURRENT_TIMESTAMP
{% endmacro %}

{% macro athena_current_timestamp_in_utc() %}
    (
        CURRENT_TIMESTAMP AT TIME ZONE 'utc'
    )
{% endmacro %}
