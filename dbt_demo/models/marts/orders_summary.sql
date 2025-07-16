-- models/orders_summary.sql
SELECT
  customer_id,
  COUNT(order_id) AS total_orders,
  SUM(order_amount) AS total_spent
FROM {{ ref('raw_orders')}}
GROUP BY customer_id
