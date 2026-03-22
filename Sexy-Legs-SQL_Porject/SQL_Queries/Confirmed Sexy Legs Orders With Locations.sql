WITH cleaned_order_items AS (
  SELECT
    order_id,
    user_id,
    product_id,
    sale_price,
    status,
    created_at
  FROM `bigquery-public-data.thelook_ecommerce.order_items`
  WHERE status = 'Complete'
    AND product_id IN (
      SELECT DISTINCT product_id
      FROM `bigquery-public-data.thelook_ecommerce.inventory_items`
      WHERE product_name LIKE '%Sexy Legs%'
    )
),

cleaned_events AS (
  SELECT
    user_id,
    city,
    state,
    postal_code,
    browser,
    traffic_source,
    uri,
    event_type,
    created_at,
    SAFE_CAST(REGEXP_EXTRACT(uri, r'/product/(\d+)') AS INT64) AS product_id
  FROM `bigquery-public-data.thelook_ecommerce.events`
  WHERE REGEXP_CONTAINS(uri, r'/product/\d+')
)

SELECT
  oi.order_id,
  oi.user_id,
  oi.product_id,
  oi.sale_price,
  oi.created_at AS order_created_at,
  e.created_at AS event_created_at,
  e.city,
  e.state,
  e.postal_code,
  e.traffic_source,
  e.uri
FROM cleaned_order_items oi
JOIN cleaned_events e
ON oi.user_id = e.user_id
AND oi.product_id = e.product_id
AND ABS(TIMESTAMP_DIFF(oi.created_at, e.created_at, MINUTE)) <= 30
ORDER BY oi.created_at