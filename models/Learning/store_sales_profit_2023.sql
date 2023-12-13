
with store_final as
(
select *
from {{ ref('STORE_TBL_2023') }}
),
store_sales_final as
(select *
from {{ ref('store_sales_tbl_2023') }}
),

 final_sales_profit as
(
    select s_store_name,s_county sum(SS_SALES_PRICE),sum(ss_net_profit) from store_final,store_sales_final
where S_STORE_SK=SS_STORE_SK
group by 1,2
)
select * from final_sales_profit