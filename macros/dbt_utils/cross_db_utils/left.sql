{% macro athena__left(string_text, start) %}

    substr(
        {{ string_text }},
        {{ start }}
        )

{% endmacro %}
