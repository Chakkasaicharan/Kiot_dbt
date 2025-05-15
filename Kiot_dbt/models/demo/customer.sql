{{ config(materialized='table') }}

--Right a query using the SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.ORDERS table and get the
--list of distinct orderpriorities, total counts of each priority, their total price, 
--and their ---average.Order the list with highest total price on top
--Create a table CUSTOMER_TEMP and load all the records having negative C_ACCTBAL in
--SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.CUSTOMER table.
select * from {{ source('jaffle_shop','CUSTOMER') }} where C_ACCTBAL<0