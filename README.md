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

Revenue trend over time/Forecasting (line chart)

Revenue by region (bar chart)

Product performance (bar chart)

Sales by category (donut chart)

🎛️ Filters (Slicers)

Region

Product Category

<img width="1525" height="855" alt="RevenueCasting" src="https://github.com/user-attachments/assets/71da765b-59c0-430d-8681-29e7062b752a" />

# Forecasting Feature

## Sales Forecasting Overview

This dashboard includes a built-in forecasting feature using Power BI’s native analytics tools to project future revenue trends based on historical sales data.

The forecast is displayed in the “3 Month Forecast” line chart, which extends actual revenue patterns into future periods using time series analysis.

⚙️ How It Works

The forecast is generated using Power BI’s exponential smoothing algorithm

It analyzes historical revenue trends over time

Produces a forward-looking projection with uncertainty bounds

## Data Preparation

To enable accurate forecasting:

A dedicated Date Table was created using:

DateTable = CALENDAR(MIN(Sales_Data[Order_Date]), MAX(Sales_Data[Order_Date]))

A relationship was established:

 DateTable[Date] → Sales_Data[Order_Date]
 
 Missing dates were handled to ensure a continuous time series

Revenue measures were adjusted to replace blanks with zero:

Total Revenue = COALESCE(SUM(Sales_Data[Revenue]), 0)

## Forecast Configuration

The forecast was configured with the following settings:

Forecast Length: 3 Months

Confidence Interval: 95%

Seasonality: Auto-detected

Ignore Last: 0 periods

These settings allow the model to:

Capture underlying trends

Account for variability in revenue

Provide a realistic projection range

📊 Visual Interpretation
Blue Line: Historical revenue data

Green Area: Forecasted revenue

Shaded Region: Confidence interval (uncertainty range)

Users can:

Identify expected revenue growth trends

Understand potential variability in future performance

Support data-driven planning and decision-making

⚠️ Limitations
Forecast accuracy depends on data quality and consistency

Large gaps or irregular sales patterns may reduce reliability

Assumes past trends will continue into the future

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

<img width="1535" height="855" alt="RevenueCastingTT" src="https://github.com/user-attachments/assets/b78e943b-33f8-415d-958c-3ee95c297704" />

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

# Author
Janay Wesso
Aspiring Data Analyst

Automate data pipeline



