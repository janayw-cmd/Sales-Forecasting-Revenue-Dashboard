# Sales-Forecasting-Revenue-Dashboard

## End-to-end sales analytics project featuring data cleaning, SQL analysis, and an interactive Power BI dashboard with revenue forecasting.

# Project Overview

This project focuses on analyzing historical sales data and building an interactive dashboard to track revenue performance and forecast future sales trends.

The goal is to simulate a real-world business scenario where stakeholders need insights into:

Revenue growth
Monthly revenue trends
Regional sales performance
Product performance
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

The dataset contains transactional sales data with the following fields:

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
Month,
Year,
Month-Year (for time series analysis).

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

Power BI Dashboard

The dashboard includes:

# 🔑  Key Metrics
Total Revenue

Total Orders

Monthly Revenue

# 📈 Visualizations

Monthly revenue trend & forecasting (line chart)

Revenue by region (bar chart)

Revenue by product (bar chart)

Revenue by category (donut chart)

# 🎛️ Filters (Slicers)
Region

Product Category

# Forecasting Feature
## Sales Forecasting Overview;

This dashboard includes a built-in forecasting feature using Power BI’s native analytics tools to project future revenue trends based on historical sales data.

The forecast is displayed in the 3 Month Forecast line chart, which extends actual revenue patterns into future periods using time series analysis.

<img width="1530" height="860" alt="RevenueDashboard1" src="https://github.com/user-attachments/assets/a5baaaaf-8519-499f-916a-c64e38c28534" />
<img width="1526" height="854" alt="RevenueDashboard2" src="https://github.com/user-attachments/assets/2720f477-94bc-42f8-b3ec-a41ecd842464" />

# ⚙️ How It Works

The forecast is generated using Power BI’s exponential smoothing algorithm

Analyzes historical revenue trends

Produces forward-looking projections

Includes uncertainty bounds

# Data Preparation

To enable accurate forecasting:

A dedicated Date Table was created using:

DateTable = CALENDAR(MIN(Sales_Data[Order_Date]), MAX(Sales_Data[Order_Date]))

A relationship was established:

DateTable[Date] → Sales_Data[Order_Date]

Missing dates were handled to ensure a continuous time series.

Revenue measures were adjusted to replace blanks with zero:

Total Revenue = COALESCE(SUM(Sales_Data[Sales_Amount]), 0)

# Forecast Configuration

## The forecast was configured with:

Forecast Length: 3 Months

Confidence Interval: 95%

Seasonality: Auto-detected

Ignore Last: 0 periods

## These settings allow the model to:

Capture underlying trends

Account for revenue variability

Provide realistic projections

# 📊 Visual Interpretation
Blue Line → Historical revenue data

Green Area → Forecasted revenue

Shaded Region → Confidence interval

Users can:

Identify expected revenue growth

Understand forecast uncertainty

Support data-driven decision making

# ⚠️ Limitations
Forecast accuracy depends on data quality

Large gaps may reduce reliability

Assumes historical trends continue

Advanced Feature: Custom Tooltips in Power BI

To enhance user experience and provide deeper insights without cluttering the main dashboard, custom tooltip pages were implemented.

# 🔍 Implementation

Created dedicated tooltip page

Configured as Tooltip

Linked to visuals using Report Page Tooltip

<img width="1529" height="860" alt="RevenueDashboard3png" src="https://github.com/user-attachments/assets/e7fc73ce-c9a0-428b-bf58-e53c05b21e99" />

## 📊 Tooltip Insights

The tooltip displays:

Product Category

Revenue (Sales Amount)

# 💡 Impact

Improves user experience

Keeps dashboard clean

Adds deeper insights

# Key Insights

Electronics generate the highest revenue

Gauteng is the top-performing region

Monthly revenue shows consistent growth

Certain products (Laptops, Phones) dominate revenue

# Future Improvements

Add profit and cost analysis

Customer segmentation (RFM analysis)

Larger datasets for improved forecasting

Automated data refresh pipeline

# Author

Janay Wesso

Aspiring Data Analyst


