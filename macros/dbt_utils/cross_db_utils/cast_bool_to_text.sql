{%- macro athena__cast_bool_to_text(field) -%}
    CASE
        WHEN {{ field }} = TRUE THEN 'true'
        WHEN {{ field }} = FALSE THEN 'false'
    END
{%- endmacro -%}
