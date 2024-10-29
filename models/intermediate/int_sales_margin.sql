select
    sales.products_id
    ,sales.date_date
    ,sales.revenue
    ,sales.quantity
    ,round((quantity * purchase_price), 2) AS purchase_cost
    ,round((revenue - (quantity * purchase_price)), 2) AS margin
from {{ ref('stg_raw__sales') }} as sales
    inner join {{ ref('stg_raw__product') }} as product
ON sales.products_id = product.products_id