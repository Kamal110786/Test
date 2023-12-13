{{ config(materialized='table') }}

with store_sales_2023 as
(
select ss_store_sk,ss_quantity,SS_SALES_PRICE,ss_net_profit from NEWSCH.store_sales_2023
)
select * from store_sales_2023