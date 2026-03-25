SELECT
  DISTINCT e.session_id,
  e.event_type,
  e.sequence_number,
  e.user_id,
  e.city,
  e.state,
  e.postal_code,
  e.traffic_source,
  ii.product_id,
  ii.product_name,
FROM
  `bigquery-public-data.thelook_ecommerce.events` `e`
LEFT JOIN
  `bigquery-public-data.thelook_ecommerce.inventory_items` `ii`
ON
  REGEXP_EXTRACT(e.uri, r'/product/(\d+)') = CAST(ii.product_id AS STRING)
WHERE
  ii.product_name LIKE '%Sexy Legs%' AND event_type IS NOT NULL AND user_id IS NOT NULL