# Data Dictionary

## dailyActivity_merged.csv

| Column | Description |
|---|---|
| id | User identifier |
| activity_date | Date of the activity record |
| total_steps | Total number of steps in one day |
| total_distance | Total distance recorded |
| tracker_distance | Distance tracked by the device |
| very_active_minutes | Minutes of very active movement |
| fairly_active_minutes | Minutes of fairly active movement |
| lightly_active_minutes | Minutes of light activity |
| sedentary_minutes | Minutes spent sedentary |
| calories | Calories burned |
| date | Date column created for joining datasets |
| total_active_minutes | Sum of very, fairly, and lightly active minutes |
| activity_level | Activity category based on total steps |

## sleepDay_merged.csv

| Column | Description |
|---|---|
| id | User identifier |
| sleep_day | Date of the sleep record |
| total_sleep_records | Number of sleep records |
| total_minutes_asleep | Total minutes asleep |
| total_time_in_bed | Total minutes spent in bed |
| date | Date column created for joining datasets |
| sleep_hours | Total minutes asleep converted to hours |
| time_in_bed_hours | Total time in bed converted to hours |
| awake_time_in_bed_minutes | Difference between time in bed and time asleep |
