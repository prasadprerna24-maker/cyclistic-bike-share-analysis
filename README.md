# Cyclistic Bike Share Analysis

## Executive Summary

This project analyzes Cyclistic bike-share usage patterns to identify behavioral differences between annual members and casual riders. Using Microsoft Excel for data cleaning, SQL Server Management Studio (SSMS) for exploratory data analysis, and Tableau for data visualization, the analysis uncovered key usage trends and generated business recommendations to help Cyclistic convert more casual riders into annual members.

This project was completed as part of the **Google Data Analytics Professional Certificate Capstone**.

---

## Project Overview

Cyclistic is a bike-share company that offers both single-ride passes and annual memberships. While annual members generate the majority of rides, the company aims to increase long-term profitability by converting more casual riders into annual members.

The objective of this project is to analyze historical trip data, identify differences in riding behavior between annual members and casual riders, and provide data-driven recommendations to support Cyclistic's marketing strategy.

---

## Business Task

Analyze how annual members and casual riders use Cyclistic bikes differently and recommend strategies to increase annual memberships.

---

## Data Source

The analysis uses the **Divvy Bike Share Dataset** provided for the Google Data Analytics Professional Certificate Capstone.

The dataset contains historical trip records, including:

- Rider type
- Ride duration
- Bike type
- Start and end stations
- Ride dates and times

---

## Tools Used

| Tool | Purpose |
|------|---------|
| Microsoft Excel | Data cleaning and preparation |
| SQL Server Management Studio (SSMS) | Exploratory data analysis |
| Tableau | Dashboard creation and data storytelling |

---

## Project Workflow

```text
Business Question
        │
        ▼
Data Collection
        │
        ▼
Data Cleaning (Excel)
        │
        ▼
Exploratory Data Analysis (SSMS)
        │
        ▼
Data Visualization (Tableau)
        │
        ▼
Business Recommendations
```

---

## Data Cleaning

The dataset was cleaned and prepared using Microsoft Excel before analysis.

The cleaning process included:

- Removing duplicate records
- Handling missing and invalid values
- Standardizing data formats
- Creating additional fields required for analysis
- Preparing the dataset for SQL analysis

---

## Exploratory Data Analysis (SQL)

SQL queries were executed using **SQL Server Management Studio (SSMS)** to perform exploratory data analysis and answer the business question.

The analysis included:

- Total rides by rider type
- Average ride duration
- Monthly ride trends
- Weekly ride trends
- Rider behavior comparisons

All SQL queries used for the analysis are available in:

```text
sql/analysis.sql
```

---

## Tableau Dashboard

An interactive Tableau dashboard was created to visualize the analysis and communicate insights effectively.

The dashboard includes:

- Ride distribution by rider type
- Monthly ride trends
- Weekly ride trends
- Average ride duration
- Rider behavior comparisons

**Tableau Public Dashboard**

*Link will be added after publishing.*

---

## Key Findings

### 1. Annual members generate the majority of rides

Annual members account for more than **3.5 million rides**, compared to approximately **1.9 million rides** from casual riders, indicating that members rely on Cyclistic significantly more for transportation.

### 2. Casual riders take longer trips

Casual riders have a higher average ride duration than annual members, suggesting that they primarily use Cyclistic for leisure and recreational activities rather than daily commuting.

### 3. Riding behavior differs throughout the week

- Annual members ride more frequently during weekdays, reflecting commuting behavior.
- Casual riders are more active during weekends, indicating recreational usage.

### 4. Summer presents the greatest opportunity

Ridership increases significantly during the summer months, with casual rider activity experiencing the largest seasonal growth. This presents an ideal opportunity to promote annual memberships.

---

## Business Recommendations

Based on the analysis, the following recommendations are proposed:

1. Launch seasonal membership campaigns during the summer when casual ridership is highest.

2. Introduce weekend membership promotions to encourage frequent recreational riders to convert into annual members.

3. Highlight the long-term cost savings of annual memberships for riders who frequently use the service.

4. Offer trial memberships or introductory membership plans to reduce the barrier for casual riders.

---

## Repository Structure

```text
cyclistic-bike-share-analysis/
│
├── README.md
├── LICENSE
│
├── data/
│   ├── raw/
│   └── cleaned/
│
├── excel/
│
├── sql/
│   └── analysis.sql
│
├── tableau/
│   └── cyclistic_dashboard.twbx
│
└── images/
    ├── dashboard.png
    └── story.png
```

---

## Dashboard Preview

### Dashboard

![Dashboard](images/dashboard.png)

### Story

![Story](images/story.png)

---

## Future Improvements

Potential enhancements for this project include:

- Automating the data cleaning process using SQL or Python.
- Performing deeper customer segmentation.
- Building predictive models for membership conversion.
- Expanding the Tableau dashboard with additional interactive filters.
