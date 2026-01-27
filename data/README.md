# Data
Source dataset from Kaggle.
This project uses PostgreSQL to store and analyze e-commerce user behavior data. 

## Folder `data/`
This project contains a `data/` folder with CSV files used for demonstration and review purposes.
### Included files:
- `users_behavior_sample.csv` - a **sample of the original dataset (50 rows)** extracted from the full table (1M rows).  
  This file is provided to showcase the data structure, column names and data types without sharing the full dataset.
- `01.1-2_data_overview.csv` - aggregated dataset containing **high-level overview metrics** of the original table, including total number of users and distribution across key dimensions (such as device types).  
  This file represents the output of initial exploratory SQL queries used to understand dataset size, structure, and basic user distribution.
- `02.1-4_users_segments_and_conversion.csv` - aggregated dataset with **user segmentation results and conversion metrics**.  
  Includes user counts, average monthly spend, average order value, conversion rate, and cart abandonment rate across business-relevant segments such as income level, age group, device type, and shopping time of day.  
  This file summarizes the core segmentation and behavioral analysis performed in the project.
- `03.1-3_revenue_drivers.csv` - aggregated dataset focused on **key revenue drivers and purchasing behavior**.  
  Contains summary metrics such as average monthly spend, average order value, weekly purchases.  
  This file reflects SQL queries aimed at identifying factors that contribute most to platform revenue.
- `04_key_metrics_median.csv` - aggregated dataset presenting **median values of key product metrics**, including monthly spend, average order value, weekly purchases, and purchase conversion rate.  


## Notes:
- The full dataset is not included in the repository due to size limitations.
- Aggregated CSV files represent the **output of SQL queries** located in the `sql/` folder.
