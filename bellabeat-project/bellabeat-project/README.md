# Bellabeat Case Study: Smart Device Usage Analysis

## Project Overview

This project analyzes Fitbit smart device data to understand user activity, sleep behavior, and sedentary time.

The goal is to identify wellness patterns and provide business recommendations for Bellabeat.

## Business Task

Bellabeat wants to understand how smart device users track activity and sleep.

The main business question is:

How can Bellabeat use smart device data to help users build healthier daily habits?

## Data Source

The dataset used in this project is the Fitbit Fitness Tracker Data from Kaggle. It contains activity and sleep records from smart device users.


## Tools Used

- Python
- pandas
- SQLite
- SQL
- matplotlib
- Jupyter Notebook
- GitHub

## Project Structure

- `data/clean/` — cleaned datasets
- `notebooks/` — Jupyter Notebook with full analysis
- `sql/` — SQL analysis queries
- `visuals/` — final visualizations
- `report/` — final summary report
- `project_documentation.md` — full project documentation
- `data_dictionary.md` — data column descriptions

## Main Findings

- Daily activity tracking had higher user coverage than sleep tracking.
- The daily activity dataset included 33 users, while the sleep dataset included 24 users.
- Higher sedentary levels were associated with lower average sleep duration.
- Sedentary hours and sleep hours had a correlation of -0.60.
- This suggests a moderate negative relationship between sedentary time and sleep duration.

## Final Visualizations

- [User Tracking Coverage](visuals/user_tracking_coverage.png)
- [Average Sleep Hours by Sedentary Level](visuals/avg_sleep_hours_by_sedentary_level.png)
- [Sleep Hours vs Sedentary Hours](visuals/sleep_hours_vs_sedentary_hours.png)

  ## Limitations

- The dataset contains a small sample of users.
- The data is from 2016, so behavior may differ from current smart device users.
- The analysis shows correlation, not causation.
- The data comes from Fitbit users, not Bellabeat users directly.

## Recommendations

Based on the analysis, Bellabeat could:

1. Encourage users to track sleep more consistently.
2. Use movement reminders and inactivity alerts to reduce long sedentary periods.
3. Combine activity, sedentary behavior, and sleep insights in the app.

## Key Files

- [Full Notebook](notebooks/bellabeat_analysis.ipynb)
- [SQL Queries](sql/analysis_queries.sql)
- [Summary Report](report/bellabeat_summary_report.md)
- [Project Documentation](project_documentation.md)
- [Data Dictionary](data_dictionary.md)

## Status

Completed.
