# Influenza Shots Dashboard (2021)

## 📌 Project Overview
This portfolio project explores SQL analysis of influenza shots in 2021 and is being expanded to include Tableau dashboards.
The dataset used is Synthea Sample Synthetic Patient Records (2019–2021).

Originally inspired by a YouTube tutorial project analyzing 2022 flu shots. Since the original dataset was no longer available, I downloaded the official Synthea dataset and adapted the schema. The SQL in the tutorial does not include an age column. I computed age myself using the birthdate field from the Synthea dataset. My SQL version is adapted to the current dataset structure.


In my dataset, influenza shots are coded as 140 or 141 instead of 5302(flu shots). This required adjustments to queries and filters to ensure accuracy.

Data Cleaning Guide：

Remove random numbers from Synthea-generated patient names using SQL


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

Tableau (in progress): Dashboard visualizations (KPI overview, trend charts, county-level maps)


## 🚀 Adjustments & Debugging
Schema differences (column names, counts) required modifications to queries.

Code mapping differences (5302 vs 140/141) meant rewriting filters to identify influenza shots correctly.

Debugging and refining queries ensured accurate stratification and totals.


## 📎 Current Status
SQL queries completed and tested

Tableau dashboard development ongoing

Future updates will include screenshots and a Tableau Public link


## 🔗 How to Use
Clone repository

Run SQL scripts in PostgreSQL

Tableau workbook (coming soon) will be added for visualization


---
The creator of the original tutorial has sadly passed away. This project is shared in appreciation of his work. May he rest in peace.

