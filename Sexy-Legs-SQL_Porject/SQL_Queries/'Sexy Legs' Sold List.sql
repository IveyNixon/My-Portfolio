SELECT
  dc.id AS distribution_center_id,
  dc.name,
  ii.product_id,
  ii.product_name,
  ii.cost,
  ii.product_retail_price AS retail_price,
  ii.sold_at
FROM
  `bigquery-public-data.thelook_ecommerce.inventory_items` `ii`
JOIN
  `bigquery-public-data.thelook_ecommerce.distribution_centers` `dc`
ON
  ii.product_distribution_center_id = dc.id
WHERE
  ii.product_name LIKE "%Sexy Legs%" And ii.sold_at IS NOT NULL
ORDER BY
  sold_at DESC