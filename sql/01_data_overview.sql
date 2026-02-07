-- checking data for duplicates
SELECT
    COUNT(*) AS total_rows,
    COUNT(DISTINCT user_id) AS unique_users
FROM users_behavior

-- сhecking for NULL values in key metrics
SELECT
    COUNT(*) FILTER (WHERE monthly_spend IS NULL) AS null_monthly_spend,
    COUNT(*) FILTER (WHERE average_order_value IS NULL) AS null_aov,
    COUNT(*) FILTER (WHERE purchase_conversion_rate IS NULL) AS null_conversion_rate,
    COUNT(*) FILTER (WHERE cart_abandonment_rate IS NULL) AS null_cart_abandonment
FROM users_behavior

-- сhecking the ranges of numeric metrics (validity of values)
SELECT
    MIN(age) AS min_age,
    MAX(age) AS max_age,
    MIN(monthly_spend) AS min_monthly_spend,
    MAX(monthly_spend) AS max_monthly_spend,
    MIN(purchase_conversion_rate) AS min_conversion_rate,
    MAX(purchase_conversion_rate) AS max_conversion_rate
FROM users_behavior

-- users without purchases but with non-zero conversion
SELECT COUNT(*) AS inconsistent_users
FROM users_behavior
WHERE weekly_purchases = 0
  AND purchase_conversion_rate > 0
      
-- finding outliers in costs
 SELECT
    user_id,
    monthly_spend
FROM users_behavior
WHERE monthly_spend >
      (SELECT PERCENTILE_CONT(0.99) 
       WITHIN GROUP (ORDER BY monthly_spend)
       FROM users_behavior)
ORDER BY monthly_spend DESC
LIMIT 20
