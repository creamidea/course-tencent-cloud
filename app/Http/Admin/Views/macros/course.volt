{%- macro model_info(value) %}
    {% if value == 1 %}
        点播
    {% elseif value == 2 %}
        直播
    {% elseif value == 3 %}
        专栏
    {% elseif value == 4 %}
        面授
    {% else %}
        未知
    {% endif %}
{%- endmacro %}

{%- macro level_info(value) %}
    {% if value == 1 %}
        入门
    {% elseif value == 2 %}
        初级
    {% elseif value == 3 %}
        中级
    {% elseif value == 4 %}
        高级
    {% else %}
        未知
    {% endif %}
{%- endmacro %}