# SQL Files
This folder contains SQL scripts for analytical views and metrics.

## Data Quality Findings
During exploratory data quality checks, it was identified that conversion-related metrics
(`purchase_conversion_rate`, `cart_abandonment_rate`) were stored as percentage values (0–100),
rather than normalized ratios (0–1), despite their naming.

To address this:
- Validation rules were adjusted to reflect the actual data ranges
- Metrics were normalized within analytical views to ensure correct interpretation
- All business calculations use normalized values
