
# Influenza Shots Dashboard (2021)

## 📌 Project Overview

This portfolio project demonstrates SQL analysis of influenza shots in 2021, with completed Tableau dashboards for visualization. The dataset used is 1K Sample Synthetic Patient Records (2019–2021).

The project was originally inspired by a YouTube tutorial analyzing 2022 flu shots. Since the original dataset is no longer available, I adapted the schema using the official Synthea dataset. The tutorial’s SQL did not include an age column, so I computed age manually from the birthdate field. Queries were adjusted to align with the current dataset structure.

In this dataset, influenza shots are coded as 140 or 141 instead of 5302 (flu shots). Queries and filters were rewritten accordingly to ensure accuracy.

### Data Cleaning Guide

Remove random numbers from Synthea-generated patient names using SQL.


## 🎯 Objectives

### 1. Patient Coverage

 Percentage of patients receiving influenza shots, stratified by:

 a. Age

 b. Race

 c. County (visualized on a map)

 d. Overall


### 2. Running Totals

 Cumulative count of influenza shots administered across 2021


### 3. Annual Totals

 Total number of influenza shots given in 2021


### 4. Patient List

 Individual-level view showing whether each patient received the influenza shot


## 📂 Requirements
Patients must be “Active at our hospital” to be included in the analysis.


## 🛠️ Tools & Methods
SQL (PostgreSQL): Data validation, aggregation, stratification queries

Tableau: Dashboard visualizations (KPI overview, trend charts, county-level maps)


## 🚀 Adjustments & Debugging
Schema differences (column names, counts) required modifications to queries.

Code mapping differences (5302 vs 140/141) meant rewriting filters to identify influenza shots correctly.

Debugging and refining queries ensured accurate stratification and totals.


## 📎 Current Status
- SQL queries completed and tested  
- Tableau dashboard development finished  
- Tableau workbook added for visualization  
- Tableau Public link available
 Tableau Public link: https://public.tableau.com/app/profile/meghan.wang/viz/ImmunizationDashboard_17853761085020/Dashboard1?publish=yes




## 🔗 How to Use
Clone repository

Run SQL scripts in PostgreSQL

Tableau workbook (coming soon) will be added for visualization


---
The creator of the original tutorial has sadly passed away. This project is shared in appreciation of his work and his contribution to the data community. May he rest in peace.









