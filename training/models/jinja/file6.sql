{% if execute %}

    {% set results = run_query(
        "select count(*) from " ~ source('airbnb', 'hosts')
    ) %}

    {% if results is not none %}
        {% set rowcount = results.columns[0].values()[0] %}
        {{ log("rowcount = " ~ rowcount, info=True) }}
    {% endif %}

{% endif %}

select 1 as id