-- dataset size and diversity
SELECT
      COUNT(*) AS total_users,
      COUNT(DISTINCT country) AS countries,
      COUNT(DISTINCT device_type) AS device_types
FROM users_behavior;

-- users by device type
SELECT
      device_type,
      COUNT(*) AS users_cnt
FROM users_behavior
GROUP BY device_type
ORDER BY users_cnt;
