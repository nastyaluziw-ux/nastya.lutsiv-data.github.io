# Bellabeat Case Study Documentation

## 1. Ask

The goal of this project is to analyze Fitbit smart device data and find trends in activity and sleep behavior.

These trends will be used to make marketing recommendations for Bellabeat Leaf.

## 2. Prepare

The data source is the FitBit Fitness Tracker Data dataset.

For this project, I selected two files:

- dailyActivity_merged.csv
- sleepDay_merged.csv

These files were selected because they contain activity and sleep data.

## 3. Process

I used Jupyter Notebook, Python, and pandas to clean and prepare the data.

The cleaning process included:

- Loading the raw CSV files
- Checking rows and columns
- Reviewing column names and data types
- Checking duplicate records
- Removing 3 duplicate rows from the sleep dataset
- Checking missing values by column and by row
- Cleaning column names
- Converting date columns to datetime format
- Creating calculated columns
- Exporting clean CSV files

New columns created in the daily activity dataset:

- date
- total_active_minutes
- activity_level

New columns created in the sleep dataset:

- date
- sleep_hours
- time_in_bed_hours
- awake_time_in_bed_minutes

The cleaned datasets are ready for the analysis phase.
