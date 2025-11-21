-- find top 10 highest revenue generating products
SELECT 
    product_id,
    SUM(sale_price) AS sales
FROM df_orders
GROUP BY product_id
ORDER BY sales DESC
LIMIT 10;

-- top 5 highest selling products in each region
WITH cte AS (
  SELECT
    region,
    product_id,
    SUM(sale_price) AS sales
  FROM df_orders
  GROUP BY region, product_id
)
SELECT region, product_id, sales
FROM (
  SELECT
    region,
    product_id,
    sales,
    ROW_NUMBER() OVER (PARTITION BY region ORDER BY sales DESC) AS rn
  FROM cte
) t
WHERE rn <= 5
ORDER BY region, sales DESC;

