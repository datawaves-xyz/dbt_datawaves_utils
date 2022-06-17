{% macro binary_literal(expression) %}
  {{ return(adapter.dispatch('binary_literal', packages = datawaves_utils._get_utils_namespaces()) (expression)) }}
{% endmacro %}


{% macro default__binary_literal(expression) -%}
  X'{{ expression }}'
{%- endmacro %}


{% macro spark__binary_literal(expression) -%}
  X'{{ expression }}'
{%- endmacro %}
