with store_sales_2023 as
(
select ss_store_sk,ss_quantity,ss_sales_price,ss_net_profit from NEWSCH.store_sales_2023
)
select * from store_sales_2023