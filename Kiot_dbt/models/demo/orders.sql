{{ config(materialized='table') }}
--Right a query using the SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.ORDERS table and get the
--list of distinct orderpriorities, total counts of each priority, their total price, 
--and their ---average.Order the list with highest total price on top


select distinct(O_ORDERPRIORITY) as dis,count(O_ORDERPRIORITY) as count,sum(O_TOTALPRICE) as price,
avg(O_TOTALPRICE) as avg from {{source('jaffle_shop','ORDERS')}} group by O_ORDERPRIORITY
order by price desc
