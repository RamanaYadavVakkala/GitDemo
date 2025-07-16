-- models/customers.sql
SELECT
  customer_id,
  first_name,
  last_name,
  email
FROM {{ ref('raw_customers') }}
