# Bellabeat Case Study Documentation

## 1.Ask Phase

### Business Task

Analyze Fitbit smart device usage data to identify trends in activity and sleep behavior. The goal is to apply these insights to Bellabeat Leaf and support marketing recommendations.

### Main Questions

1. What are some trends in smart device usage?
2. How could these trends apply to Bellabeat customers?
3. How could these trends influence Bellabeat's marketing strategy?

### Stakeholders

The main stakeholders are Bellabeat's executive team and marketing analytics team.

### Notes

The data used in this project comes from Fitbit users, not Bellabeat users. Because of this, the findings should be used as general smart device usage insights, not direct conclusions about Bellabeat customers.
## 2. Prepare

### Data Source

The data source used for this project is the FitBit Fitness Tracker Data dataset available on Kaggle. The dataset contains fitness tracker data from Fitbit users who agreed to share their personal tracker information.

The dataset includes information about daily activity, steps, calories, heart rate, and sleep. For this project, I selected the files related to daily activity and sleep because they are directly connected to the Bellabeat Leaf product.

### Selected Files

The selected files for this analysis are:

* "dailyActivity_merged.csv"
* "sleepDay_merged.csv"

### Why These Files Were Selected

The "dailyActivity_merged.csv" file includes daily activity information such as total steps, calories, active minutes, and sedentary minutes.

The "sleepDay_merged.csv" file includes sleep information such as total minutes asleep and total time in bed.

These two files were selected because they can help answer the main business questions about smart device usage trends related to activity and sleep behavior.

### Data Organization

The dataset is organized as CSV files. Each file contains rows of user activity or sleep records. The `Id` column identifies each user, and the date columns allow activity and sleep records to be analyzed over time.

### Data Limitations

The dataset has several limitations:

- The sample size is small.
- The data comes from Fitbit users, not Bellabeat users.
- The dataset does not confirm gender, age, location, or lifestyle of the users.
- The data is historical and may not fully represent current smart device usage.
- The data should be used for general insights, not final conclusions about Bellabeat customers.

### Data Privacy and Licensing

The dataset is publicly available and uses a public domain license. The users consented to share their fitness tracker data. No direct personal identifying information is included in the selected files.

### 2.Prepare Phase Summary

In this phase, I reviewed the available data source, selected the most relevant files for the business task, and documented the main limitations of the dataset before starting the cleaning process.
