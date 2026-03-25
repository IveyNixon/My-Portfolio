SELECT
  DISTINCT product_id,
  product_name
FROM
  `bigquery-public-data.thelook_ecommerce.inventory_items`
WHERE
  product_name LIKE '%Sexy Legs%'