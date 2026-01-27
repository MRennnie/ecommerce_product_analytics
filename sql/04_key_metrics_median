-- metrics: monthly_spend, average_order_value, weekly_purchases, purchase_conversion_rate
SELECT
  	PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY monthly_spend) AS median_monthly_spend,
		PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY average_order_value) AS median_average_order_value,
		PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY weekly_purchases) AS median_weekly_purchases,
		PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY purchase_conversion_rate) AS median_purchase_conversion_rate
FROM users_behavior

