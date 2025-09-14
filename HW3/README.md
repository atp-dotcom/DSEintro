# Homework 3: Collaborative Data Wrangling & EDA
## DSE 511 - Fall 2025

--- 

#  Annual Change in GDP, Population, and CO₂ Emissions  

This repository contains data on **annual changes in GDP, population, and CO₂ emissions** for various countries.  

---

## Dataset Information

- **Population**  
  - Source: United Nations Population Division, Eurostat, national statistical offices, and United Nations Statistics Division, via World Bank (2025)  
  - Date accessed: September 5, 2025
  - Description: This dataset contains the world population growth (annual %) from 1961 to 2024.
  - Size: [159 KB, 10595 rows]
  - License: CC BY-4.0  
  - URL: [https://data.worldbank.org/indicator/SP.POP.GROW](https://data.worldbank.org/indicator/SP.POP.GROW)  

- **GDP**  
  - Source: World Bank and OECD national accounts (2025)  
  - Date accessed: September 5, 2025  
  - URL: [https://data.worldbank.org/indicator/NY.GDP.MKTP.KD.ZG](https://data.worldbank.org/indicator/NY.GDP.MKTP.KD.ZG)  

- **CO₂ Emissions**  
  - Source: Global Carbon Project – Global Carbon Budget (2024)  
  - Date accessed: September 5, 2025 
  - URL: [https://globalcarbonbudget.org/](https://globalcarbonbudget.org/)  

---

## Cleaning and Analysis  

- The `co2-gdp-pop-growth.csv` file was sourced from **Our World in Data** and stored in the `data/` folder of the repository.

- The `Homework3_Analysis.ipynb` notebook was used to perform the following cleaning steps:
  - Loaded the raw CSV file.  
  - Renamed columns for readability.  
  - Handled missing values by dropping rows with NaN values in key columns.

## Exploratory Data Analysis (EDA)
The analysis includes both descriptive statistics and data visualizations to explore trends and relationships.

### Descriptive Statistics
- Compared the **mean and median growth rates** for both GDP and CO₂ emissions to identify potential data skew.  
- Calculated the **top 5 countries with the highest average annual CO₂ emissions growth**.  
- Analyzed the **correlation between GDP growth and CO₂ emissions growth**, split into two time periods (pre- and post-2000) to check for changing relationships over time.

### Visualizations
- Created a **bar chart** to visualize and compare the top 5 countries by average CO₂ emissions growth.  
- Plotted a **time-series line plot** to show the global average trends of GDP and CO₂ emissions growth over time.  
- Added **annotations** to highlight the 2008 Financial Crisis and its impact on the data.  
- Created a **loop to generate a gallery of time-series plots** for key countries (United States, China, India) to mimic a dynamic, interactive selection.  

---

## Contributions  

- **Gagandeep Kaur**  
- **Anibely Polanco Torres**  

This project was a collaborative effort between both the partners. We both worked on both the parts and understanding each task.

- **Branches**: Each partner worked on a separate branch, `Gagan_DA` and `HW3`, to manage their code contributions.  
- **Merge Conflict Resolution**: A merge conflict was intentionally created and successfully resolved by both partners, demonstrating a key aspect of the Git collaboration workflow. 

## Merge Conflict
The git pull command resulted in a merge conflict because changes were made to the same file (Homework3_Analysis.ipynb) in both the local and remote repositories. The conflict was resolved by Manually editing the conflicted file to integrate the changes from both partners, and using git add to stage the resolved file. Also, committing the merged changes.

This process successfully integrated the work from both team members, preserving all contributions.
