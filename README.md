# ecommerce_product_analytics
User behavior analysis: segmentation, conversion, cart abandonment revenue drivers (PostgreSQL)

## Project Overview
This pet-project explores user behavior data from an e-commerce platform using PostgreSQL.
The goal is to analyze how users interact with the product, identify key behavioral patterns,
and evaluate factors influencing conversion, cart abandonment, and revenue.

## Business Questions
The analysis answers the following questions:
- How are users distributed across devices, countries, and income levels?
- Which user segments generate higher revenue?
- How does conversion rate vary by device and time of day?
- What factors are associated with higher cart abandonment?
- Who are the highest-value users?

## Dataset
- Source: Kaggle (synthetic e-commerce user behavior dataset)
- Granularity: user-level aggregated data
- Size: 1,000,000 users

Key metrics include:
- monthly_spend
- purchase_conversion_rate (stored as percentage values)
- cart_abandonment_rate (stored as percentage values)
- average_order_value

## Tools & Technologies
- PostgreSQL
- SQL (aggregations, subqueries, CTEs, window functions)
- GitHub

## Project Structure
ecommerce-user-behavior-analysis/
├── data/
│ └── users_behavior.csv
├── sql/
│ ├── 01_data_overview.sql
│ ├── 02_user_segments.sql
│ ├── 03_conversion_analysis.sql
│ ├── 04_cart_abandonment.sql
│ ├── 05_revenue_drivers.sql
│ └── 06_advanced_sql_analysis.sql

## Analysis Summary
Key insights that can be derived from this analysis:
- Conversion and cart abandonment vary significantly by device type
- Loyalty program members tend to have higher average monthly spend
- High-spending users represent a small share of the user base but contribute
  disproportionately to total revenue
- Coupon usage and shopping time of day show correlations with cart abandonment
