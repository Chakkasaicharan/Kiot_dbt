{{ config (materialized='table') }}

select * from (
    {{ customer12() }}
)