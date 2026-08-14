/*=========================================================
Cyclistic Bike Share Analysis
Google Data Analytics Professional Certificate Capstone Project

Author: Prerna Prasad

Database: Microsoft SQL Server
Tools: SQL Server Management Studio (SSMS)

Objective:
Analyze the behavioral differences between annual members and casual riders to generate data-driven recommendations for increasing annual memberships.
=======================================================================================================================================================*/

USE Cyclistic_Project;
GO

/*=========================================================
1. Data Preparation
Combine monthly trip data into a single table
=========================================================*/

SELECT *
INTO full_year_data
FROM january_ride_details
UNION ALL
SELECT * FROM feb_ride_details
UNION ALL
SELECT * FROM mar_ride_details
UNION ALL
SELECT * FROM apr_ride_details
UNION ALL
SELECT * FROM may_ride_details
UNION ALL
SELECT * FROM jun_ride_details
UNION ALL
SELECT * FROM jul_ride_details
UNION ALL
SELECT * FROM aug_ride_details
UNION ALL
SELECT * FROM sept_ride_details
UNION ALL
SELECT * FROM oct_ride_details
UNION ALL
SELECT * FROM nov_ride_details
UNION ALL
SELECT * FROM dec_ride_details;
GO

/*=========================================================
2. Rider Distribution
Analyze the total rides by rider type
=========================================================*/

SELECT member_casual,
       COUNT(*) AS total_rides
FROM full_year_data_clean
GROUP BY member_casual;

/*=========================================================
3. Average Ride Duration
Compare average ride duration by rider type
=========================================================*/

SELECT member_casual,
       AVG(ride_length_minutes) AS avg_ride_length
FROM full_year_data_clean
GROUP BY member_casual;

/*=========================================================
4. Monthly Ride Trends
Analyze monthly ride volume throughout the year
=========================================================*/

SELECT DATENAME(MONTH, started_at) AS month_name,
       COUNT(*) AS total_rides
FROM full_year_data_clean
GROUP BY DATENAME(MONTH, started_at),
         MONTH(started_at)
ORDER BY MONTH(started_at);

/*=========================================================
5. Monthly Ride Trends by Rider Type
Compare monthly ride trends between rider types
=========================================================*/

SELECT DATENAME(MONTH, started_at) AS month_name,
       member_casual,
       COUNT(*) AS total_rides
FROM full_year_data_clean
GROUP BY DATENAME(MONTH, started_at),
         MONTH(started_at),
         member_casual
ORDER BY MONTH(started_at),
         member_casual;

/*=========================================================
6. Monthly Average Ride Duration
Compare monthly average ride duration by rider type
=========================================================*/

SELECT DATENAME(MONTH, started_at) AS month_name,
       member_casual,
       AVG(CAST(ride_length_minutes AS DECIMAL(10,2))) AS avg_ride_length
FROM full_year_data_clean
GROUP BY DATENAME(MONTH, started_at),
         MONTH(started_at),
         member_casual
ORDER BY MONTH(started_at),
         member_casual;

/*=========================================================
7. Ride Distribution by Day of Week
Analyze ride activity across the week
=========================================================*/

SELECT day_of_week,
       COUNT(*) AS total_rides
FROM full_year_data_clean
GROUP BY day_of_week;

/*=========================================================
8. Weekly Ride Trends by Rider Type
Compare weekly ride patterns by rider type
=========================================================*/

SELECT day_of_week,
       member_casual,
       COUNT(*) AS total_rides
FROM full_year_data_clean
GROUP BY day_of_week,
         member_casual
ORDER BY
    CASE day_of_week
        WHEN 'Monday' THEN 1
        WHEN 'Tuesday' THEN 2
        WHEN 'Wednesday' THEN 3
        WHEN 'Thursday' THEN 4
        WHEN 'Friday' THEN 5
        WHEN 'Saturday' THEN 6
        WHEN 'Sunday' THEN 7
    END,
    member_casual;
