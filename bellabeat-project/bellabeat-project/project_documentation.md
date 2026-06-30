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

## 4. Analyze

### Tools Used

I used SQL with SQLite inside Jupyter Notebook to analyze the cleaned datasets.

### Analysis Goals

The goal of this phase was to identify patterns in activity, sleep, sedentary behavior, and the relationship between activity and sleep.

### SQL Analysis Steps

The SQL analysis included:

* Counting total daily activity records
* Counting total sleep records
* Counting unique users in the activity and sleep datasets
* Checking the date range of both datasets
* Calculating average steps, calories, sedentary minutes, and active minutes
* Analyzing the distribution of activity levels
* Calculating average sleep hours, time in bed, and awake time in bed
* Joining activity and sleep data by user id and date
* Comparing average sleep hours by activity level
* Comparing sleep patterns by sedentary level

### Main Findings

The daily activity dataset contains 33 users, while the sleep dataset contains 24 users. This means that not all users who tracked daily activity also tracked sleep.

Both datasets cover the same period, from 2016-04-12 to 2016-05-12. This makes it possible to compare activity and sleep data by user and date.

In the joined dataset, sleep duration differs by activity level:

* Low activity days had an average of 7.57 sleep hours.
* Medium activity days had an average of 7.04 sleep hours.
* High activity days had an average of 6.60 sleep hours.

This shows a pattern between activity level and sleep duration, but it does not prove that activity level causes changes in sleep.

The joined dataset also showed high average sedentary time. This may be useful for understanding how daily movement and sedentary behavior relate to wellness habits.

### Analyze Phase Summary

In this phase, I used SQL to explore the cleaned data and identify patterns.

The main insights were related to user tracking behavior, activity levels, sleep duration, and sedentary time.

These findings will be used in the Share phase to create visualizations and communicate the results more clearly.

