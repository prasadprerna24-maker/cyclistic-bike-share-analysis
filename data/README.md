# Data

This folder contains a sample of the cleaned Cyclistic bike-share dataset used in this analysis.

## Sample Dataset

`full_year_data_clean_sample.csv`

The full cleaned dataset contains **5,455,632 rows** and was used for the complete SQL analysis. Because the full exported CSV is approximately **974 MB**, it is not included in this GitHub repository.

Instead, this repository includes a **50,000-row sample** from the cleaned dataset for portfolio review and reproducibility of the project structure.

The sample was selected from the cleaned SQL Server table using:

```sql
SELECT TOP 50000 *
FROM dbo.full_year_data_clean
ORDER BY ride_id;
```

## Columns

The sample contains the following fields:

* `ride_id`
* `started_at`
* `ended_at`
* `member_casual`
* `ride_length_minutes`
* `day_of_week`

## Important Note

The 50,000-row CSV is provided only as a representative sample.

All findings, calculations, trends, and business recommendations presented in this project were based on the **full cleaned dataset**, not only on the sample included in this repository.

## Data Source

The original trip data comes from the Divvy bike-share dataset used for the Google Data Analytics Professional Certificate Cyclistic Capstone Project.

