
{{ config(materialized='table') }}

with product_sales as (
select city,state,sum(NA_SALES),sum(GLOBAL_SALES) from NEWSCH.product
group by 1,2 
)
Select * from product_sales



