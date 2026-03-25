SELECT
current_status,
status_count,
SUM(status_count) OVER () AS total_processed
FROM(
  SELECT
  DISTINCT status AS current_status,
  COUNT(*) As status_count,
FROM
  bigquery-public-data.thelook_ecommerce.order_items
WHERE product_id IN (
    SELECT DISTINCT product_id
    FROM bigquery-public-data.thelook_ecommerce.inventory_items
    WHERE product_name LIKE '%Sexy Legs%'
  )
GROUP BY
  status)
ORDER BY
  status_count DESC