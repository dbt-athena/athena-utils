{# Athena does not have the "regexp_instr" function, but we can approximate it with "regexp_like" #}
{#   Parameters `position`, `occurrence`, and `is_raw` are therefore ignored #}
{# To match behavior of regexp_instr(), we need to return >0 when pattern is found and 0 when pattern is not found #}

{% macro athena__regexp_instr(source_value, regexp, position, occurrence, is_raw, flags) %}
cast( regexp_like( cast( {{ source_value }} as varchar ), '{{ regexp }}' ) as int )
{% endmacro %}
