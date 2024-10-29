select
    date_date
    ,round((SUM(quantity) * SUM(purchase_price)), 2) AS purchase_cost
    ,round((SUM(revenue) - (SUM(quantity) * SUM(purchase_price))), 2) AS margin
from {{ ref('int_sales_margin') }} 