select
    margin.orders_id
    ,margin.date_date
    ,round(SUM(margin.margin + ship.shipping_fee - ship.logcost - ship.ship_cost), 2) AS operational_margin
    ,SUM(margin.total_quantity) AS quantity
    ,SUM(margin.total_revenue) AS revenue
from {{ref('int_orders_margin')}} AS margin
inner join {{ref('stg_raw__ship')}} AS ship
ON margin.orders_id = ship.orders_id
GROUP BY orders_id, date_date