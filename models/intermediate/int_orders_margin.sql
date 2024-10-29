select
    orders_id
    ,date_date
    ,round(SUM(revenue), 2) AS total_revenue
    ,round(SUM(quantity), 2) AS total_quantity
    ,round(SUM(purchase_cost), 2) AS purchase_cost
    ,round(SUM(margin), 2) AS margin
from {{ ref('int_sales_margin') }} 
group by orders_id, date_date
