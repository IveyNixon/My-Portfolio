WiTH all_inventory AS (
  SELECT
  dc.id As distribution_center_id,
  dc.name,
  COUNT(*) AS inventory_count,
  SUM(ii.cost) AS total_inventory_cost,
  SUM(ii.product_retail_price) AS total_potential_sales,
  SUM(ii.product_retail_price - ii.cost) AS total_potential_profit
  FROM `bigquery-public-data.thelook_ecommerce.inventory_items` AS ii
  JOIN `bigquery-public-data.thelook_ecommerce.distribution_centers` AS dc
  ON ii.product_distribution_center_id = dc.id
  WHERE ii.product_name LIKE '%Sexy Legs%'
  GROUP BY dc.id, dc.name
),

sold_inventory AS (
  SELECT
  dc.id As distribution_center_id,
  dc.name,
  COUNT(*) AS sold_count,
  SUM(ii.cost) AS total_sold_cost,
  SUM(ii.product_retail_price) AS total_realized_sales,
  SUM(ii.product_retail_price - ii.cost) AS total_realized_profit
  FROM `bigquery-public-data.thelook_ecommerce.inventory_items` AS ii
  JOIN `bigquery-public-data.thelook_ecommerce.distribution_centers` AS dc
  ON ii.product_distribution_center_id = dc.id
  WHERE ii.product_name LIKE '%Sexy Legs%' AND sold_at IS NOT NULL
  GROUP BY dc.id, dc.name
)

SELECT
a.distribution_center_id,
a.name,
a.inventory_count,
a.total_inventory_cost,
a.total_potential_sales,
a.total_potential_profit,
s.sold_count,
s.total_sold_cost,
s.total_realized_sales,
s.total_realized_profit
FROM all_inventory a
LEFT JOIN sold_inventory s
ON a.distribution_center_id = s.distribution_center_id
ORDER BY a.inventory_count DESC