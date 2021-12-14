{%- macro athena__right(string_text, start) -%}

    substr(
        {{ string_text }},
        -{{ start }}
        )

{%- endmacro -%}
