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


### Why I Selected These Files

The daily activity file contains information about steps, calories, active minutes, and sedentary minutes.

The sleep file contains information about minutes asleep and time in bed.

These files are useful because they connect with the features of Bellabeat Leaf.

### Data Organization

The dataset is organized in CSV files.

Each file contains user records. The Id column identifies each user. The date columns help analyze activity and sleep over time.

### Data Limitations

This dataset has some limitations:

- The sample size is small.
- The data comes from Fitbit users, not Bellabeat users.
- The dataset does not include user age, gender, or location.
- The data should be used for general insights, not final conclusions.

### Prepare Phase Summary

In this phase, I reviewed the data source, selected the files for the analysis, and documented the main limitations of the dataset.
