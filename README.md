# Sales-Forecasting-Revenue-Dashboard
End-to-end sales analytics project featuring data cleaning, SQL analysis, and an interactive Power BI dashboard with revenue forecasting

# Project Overview

This project focuses on analyzing historical sales data and building an interactive dashboard to track revenue performance and forecast future sales trends.

The goal is to simulate a real-world business scenario where stakeholders need insights into:

Revenue growth

Product performance

Regional sales trends

Future sales forecasts

# Objectives

Clean and prepare raw sales data using Excel

Perform data analysis using SQL

Build an interactive dashboard in Power BI

Generate sales forecasts based on historical trends

# Tools & Technologies

Excel → Data cleaning & preprocessing

SQL → Data querying & transformation

Power BI → Data visualization & dashboarding

# Dataset

## The dataset contains transactional sales data with the following fields:

Order_ID – Unique identifier for each order

Order_Date – Date of transaction

Region – Sales region (Gauteng, Western Cape, KZN)

Product_Category – Category of product

Product_Name – Specific product sold

Sales_Amount – Total revenue per transaction

Quantity – Number of units sold

Unit_Price – Price per unit

Customer_Segment – Type of customer (Consumer, Corporate, Home Office)

# Data Cleaning (Excel)

Removed duplicates and checked for missing values

Standardized date formats

Created additional columns:

Month

Year

# SQL Analysis

Key queries performed:

Total revenue calculation

Monthly revenue trends

Revenue by region

Top-performing products

Example:

SELECT region, SUM(sales_amount) AS revenue
FROM sales
GROUP BY region;

# Power BI Dashboard

The dashboard includes:

🔑 Key Metrics

Total Revenue

Total Orders

Average Order Value (AOV)

📈 Visualizations

Revenue trend over time (line chart)

Revenue by region (bar chart)

Product performance (bar chart)

Sales by category (donut chart)

🎛️ Filters (Slicers)

Region

Product Category

<img width="1194" height="672" alt="Revenue Dashboard" src="https://github.com/user-attachments/assets/c3c6be33-aea3-45ff-94a4-47db53778c7a" />

# Advanced Feature: Custom Tooltips in Power BI

To enhance user experience and provide deeper insights without cluttering the main dashboard, custom tooltip pages were implemented in Power BI.

🔍 Implementation

Created a dedicated tooltip page

Configured the page as a Tooltip

Linked the tooltip to key visuals using the Report Page Tooltip feature

📊 Tooltip Insights

The tooltip displays:

Product Category

Revenue (Sales Amount)

This allows users to quickly understand which product categories are driving revenue when hovering over data points.

<img width="1293" height="722" alt="Tooltip" src="https://github.com/user-attachments/assets/a914f9af-c707-45b3-a616-7016e98e55a5" />

💡 Impact

Improves user experience with on-hover insights

Keeps the main dashboard clean and uncluttered

Adds an extra layer of analysis without additional visuals

# Key Insights

Electronics generate the highest revenue

Gauteng is the top-performing region

Sales show consistent monthly growth trends

Certain products (e.g., laptops, phones) dominate revenue

💡 Future Improvements

Add profit and cost analysis

Include customer segmentation (RFM analysis)

Incorporate larger datasets for better forecasting

Automate data pipeline



