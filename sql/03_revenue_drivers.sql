-- overall revenue metrics
SELECT 
      ROUND(AVG(monthly_spend), 2) AS avg_monthly_spend,
      ROUND(AVG(average_order_value), 2) AS avg_aov,
      ROUND(AVG(weekly_purchases), 2) AS avg_weekly_purchases
FROM users_behavior

-- impulse buying vs spend
SELECT
      impulse_buying_score,
      ROUND(AVG(monthly_spend), 2) AS avg_monthly_spend
FROM users_behavior
GROUP BY impulse_buying_score
ORDER BY impulse_buying_score

-- users spending above average
SELECT
      user_id,
      monthly_spend
FROM users_behavior
WHERE monthly_spend > (SELECT
                              AVG(monthly_spend)
                       FROM users_behavior)
ORDER BY monthly_spend DESC

