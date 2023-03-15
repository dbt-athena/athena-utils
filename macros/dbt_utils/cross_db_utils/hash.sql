{%- macro hash(field) -%}
  {{ return(adapter.dispatch('hash', 'dbt') (field)) }}
{%- endmacro -%}


{%- macro athena__hash(field) -%}
    to_hex(sha256(to_utf8(cast({{field}} as {{dbt.type_string()}}))))
{%- endmacro -%}
