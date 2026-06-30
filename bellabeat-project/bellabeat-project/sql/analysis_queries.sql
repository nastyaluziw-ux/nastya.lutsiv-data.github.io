
-- Bellabeat SQL Analysis Queries

-- 1. Count daily activity records
SELECT COUNT(*) AS total_daily_records
FROM daily_activity;

-- 2. Count sleep records
SELECT COUNT(*) AS total_sleep_records
FROM sleep;

-- 3. Count unique users in daily activity
SELECT COUNT(DISTINCT id) AS total_daily_users
FROM daily_activity;

-- 4. Count unique users in sleep
SELECT COUNT(DISTINCT id) AS total_sleep_users
FROM sleep;

-- 5. Daily activity date range
SELECT
    MIN(date) AS start_date,
    MAX(date) AS end_date
FROM daily_activity;

-- 6. Sleep date range
SELECT
    MIN(date) AS start_date,
    MAX(date) AS end_date
FROM sleep;

-- 7. Activity summary
SELECT
    ROUND(AVG(total_steps), 2) AS avg_steps,
    ROUND(AVG(calories), 2) AS avg_calories,
    ROUND(AVG(sedentary_minutes), 2) AS avg_sedentary_minutes,
    ROUND(AVG(total_active_minutes), 2) AS avg_active_minutes
FROM daily_activity;

-- 8. Activity level distribution
SELECT
    activity_level,
    COUNT(*) AS records,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM daily_activity), 2) AS percentage
FROM daily_activity
GROUP BY activity_level
ORDER BY records DESC;

-- 9. Sleep summary
SELECT
    ROUND(AVG(sleep_hours), 2) AS avg_sleep_hours,
    ROUND(AVG(time_in_bed_hours), 2) AS avg_time_in_bed_hours,
    ROUND(AVG(awake_time_in_bed_minutes), 2) AS avg_awake_time_in_bed_minutes
FROM sleep;

-- 10. Join activity and sleep data
SELECT
    d.id,
    d.date,
    d.total_steps,
    d.calories,
    d.sedentary_minutes,
    d.total_active_minutes,
    d.activity_level,
    s.sleep_hours,
    s.time_in_bed_hours,
    s.awake_time_in_bed_minutes
FROM daily_activity d
INNER JOIN sleep s
    ON d.id = s.id
    AND d.date = s.date;

-- 11. Sleep by activity level
SELECT
    activity_level,
    COUNT(*) AS records,
    ROUND(AVG(total_steps), 2) AS avg_steps,
    ROUND(AVG(sleep_hours), 2) AS avg_sleep_hours,
    ROUND(AVG(time_in_bed_hours), 2) AS avg_time_in_bed_hours,
    ROUND(AVG(awake_time_in_bed_minutes), 2) AS avg_awake_time_in_bed_minutes
FROM (
    SELECT
        d.id,
        d.date,
        d.total_steps,
        d.activity_level,
        s.sleep_hours,
        s.time_in_bed_hours,
        s.awake_time_in_bed_minutes
    FROM daily_activity d
    INNER JOIN sleep s
        ON d.id = s.id
        AND d.date = s.date
)
GROUP BY activity_level
ORDER BY avg_steps DESC;

-- 12. Sleep by sedentary level
SELECT
    sedentary_level,
    COUNT(*) AS records,
    ROUND(AVG(sedentary_minutes), 2) AS avg_sedentary_minutes,
    ROUND(AVG(total_active_minutes), 2) AS avg_active_minutes,
    ROUND(AVG(sleep_hours), 2) AS avg_sleep_hours
FROM (
    SELECT
        d.id,
        d.date,
        d.sedentary_minutes,
        d.total_active_minutes,
        s.sleep_hours,
        CASE
            WHEN d.sedentary_minutes < 600 THEN 'Low sedentary'
            WHEN d.sedentary_minutes < 800 THEN 'Medium sedentary'
            ELSE 'High sedentary'
        END AS sedentary_level
    FROM daily_activity d
    INNER JOIN sleep s
        ON d.id = s.id
        AND d.date = s.date
)
GROUP BY sedentary_level
ORDER BY avg_sedentary_minutes;
