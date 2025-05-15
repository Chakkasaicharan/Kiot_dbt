--Get me the custkey, customer name, customer nationkey, mktsegment and order key 
--of only
--those customers who have at least one order in order table. Use the same 
--customer and
--order table mentioned in the above questions.

{% macro customer12() %}

select a.C_CUSTKEY,a.C_NAME,a.C_NATIONKEY,a.C_MKTSEGMENT from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.CUSTOMER
a inner join SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.ORDERS b on a.C_CUSTKEY=b.O_CUSTKEY

{% endmacro %}