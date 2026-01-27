-- segments and conversion by income_level
SELECT
      CASE
          WHEN income_level::int < 30000 THEN '<30k'
          WHEN income_level::int < 60000 THEN '30k-60k'
          WHEN income_level::int < 100000 THEN '60k-100k'
          ELSE '100k+'
      END AS income_segment,
      COUNT(*) AS users_count,
      ROUND(AVG(monthly_spend),2) AS avg_monthly_spend,
      ROUND(AVG(average_order_value),2) AS avg_aov,
      ROUND(AVG(purchase_conversion_rate),2) AS avg_conversion_rate
FROM users_behavior
GROUP BY income_segment
ORDER BY income_segment

-- segments and conversion by age
SELECT 
      CASE
            WHEN age < 20 THEN '<25'
            WHEN age < 35 THEN '25-34'
            WHEN age < 50 THEN '35-49'
            ELSE '50+'
      END AS age_segment,
      COUNT(*) AS users_count,
      ROUND(AVG(monthly_spend), 2) AS avg_monthly_spend,
      ROUND(AVG(purchase_conversion_rate), 2) AS avg_conversion_rate
FROM users_behavior
GROUP BY age_segment
ORDER BY age_segment

-- segments and conversion by device_type
SELECT
      device_type,
      COUNT(*) AS users_count,
      ROUND(AVG(monthly_spend), 2) AS avg_monthly_spend,
      ROUND(AVG(purchase_conversion_rate), 2) AS avg_conversion_rate,
      ROUND(AVG(cart_abandonment_rate), 2) AS avg_cart_abandonment
FROM users_behavior
GROUP BY device_type
ORDER BY avg_monthly_spend DESC

-- conversion by shopping time
SELECT
      shopping_time_of_day,
      ROUND(AVG(purchase_conversion_rate), 2) AS avg_conversion_rate
FROM users_behavior
GROUP BY shopping_time_of_day
ORDER BY avg_conversion_rate DESC
