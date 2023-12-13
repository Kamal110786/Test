{{ config(materialized='table') }}

with store_tbl_2023 as
(
select S_STORE_SK,S_STORE_ID,s_store_name,s_country,s_county from NEWSCH.store_2023
)
select * from store_tbl_2023