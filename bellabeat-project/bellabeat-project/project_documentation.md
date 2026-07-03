# Bellabeat Case Study Documentation

## 1. Ask

The goal of this project is to analyze Fitbit smart device data and find trends in activity and sleep behavior.

These trends will be used to make marketing recommendations for Bellabeat wellness products, including Bellabeat Leaf.

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


## 5. Share

### Tools Used

I used Python and Matplotlib in Jupyter Notebook to create visualizations from the cleaned and analyzed data.

### Visualization Goals

The goal of this phase was to communicate the main findings clearly through charts.

The visualizations focused on:

- User tracking coverage
- Average sleep hours by sedentary level
- Relationship between sedentary hours and sleep hours

### Visualizations Created

The final visualizations were saved in the `visuals` folder:

- `user_tracking_coverage.png`
- `avg_sleep_hours_by_sedentary_level.png`
- `sleep_hours_vs_sedentary_hours.png`

### Main Visual Insights

The user tracking coverage chart showed that daily activity tracking had wider user coverage than sleep tracking.

The daily activity dataset included 33 users, while the sleep dataset included 24 users.

The average sleep hours by sedentary level chart showed that users with higher sedentary levels had lower average sleep duration.

The scatterplot of sleep hours versus sedentary hours showed a moderate negative relationship between sedentary time and sleep duration.

The correlation coefficient was -0.60.

This suggests that as sedentary hours increase, sleep hours tend to decrease.

### Share Phase Summary

In this phase, I created visualizations to communicate the main findings from the analysis.

The charts helped show that sleep tracking coverage was lower than activity tracking coverage, and that sedentary behavior was related to sleep duration in the dataset.


## 6. Act

### Goal

The goal of the Act phase was to provide business recommendations for Bellabeat based on the analysis findings.

### Recommendations

Based on the analysis, I recommend that Bellabeat focus on three main areas:

1. Encourage more consistent sleep tracking
2. Use sedentary-time alerts to support healthier daily habits
3. Combine activity and sleep insights in the app

### Recommendation 1: Encourage more consistent sleep tracking

The daily activity dataset included 33 users, while the sleep dataset included 24 users.

This shows that sleep tracking had lower user coverage than daily activity tracking.

Bellabeat could encourage users to track sleep more consistently through reminders, onboarding messages, and sleep habit notifications.

This could help increase user engagement with sleep-related features.

### Recommendation 2: Use sedentary-time alerts

The analysis showed that sedentary time was negatively related to sleep duration.

The correlation between sedentary hours and sleep hours was -0.60, which suggests a moderate negative relationship.

As sedentary hours increase, sleep hours tend to decrease.

Bellabeat could use movement reminders, inactivity alerts, and daily activity goals to help users reduce long sedentary periods.

### Recommendation 3: Combine activity and sleep insights

The analysis showed that activity, sedentary behavior, and sleep are connected in the dataset.

Bellabeat could combine these metrics to give users more personalized wellness insights.

For example, the app could show users how their daily movement and sedentary behavior may relate to their sleep habits.

### Limitations

This analysis has several limitations.

The dataset is small and includes a limited number of users.

The data covers one month, from 2016-04-12 to 2016-05-12.

The dataset comes from Fitbit users, not directly from Bellabeat users.

The analysis shows patterns and relationships, but it does not prove causation.

Because of these limitations, the recommendations should be used as directional insights rather than final business conclusions.

### Final Conclusion

This case study analyzed Fitbit activity and sleep data to identify wellness patterns that could be useful for Bellabeat.

The analysis showed that sleep tracking had lower user coverage than daily activity tracking.

It also showed that sedentary time was negatively related to sleep duration, with a correlation coefficient of -0.60.

Based on these findings, Bellabeat could improve its app experience by encouraging more consistent sleep tracking, sending movement reminders, and helping users understand how sedentary behavior and daily activity relate to sleep habits.
