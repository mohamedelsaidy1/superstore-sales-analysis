# Superstore Sales Analysis

## Project Objective
Analyze superstore sales data to understand overall sales performance, profitability trends,
customer contribution, and the impact of discount levels on profit margin.
The goal of this project is to provide clear, business-focused insights that support
pricing and sales strategy decisions.

---

## Dataset
Superstore dataset containing transactional sales data, including:
- Order and ship dates
- Sales, profit, and discount values
- Customer and product details
- Category and regional information

---

## Tools Used
- **SQL Server**: Data analysis and aggregation
- **Excel**: Data cleaning and validation
- **Power BI**: Data modeling, DAX measures, and dashboard visualization

---

## Analysis Overview
The analysis focuses on answering the following business questions:
- How do sales and profit change over time?
- Which customers contribute the most to total sales?
- How profitable are sales across different periods?
- How do discount levels affect profit margin?

---

## SQL Analysis

### 1. Monthly Sales Trend
Aggregated total sales by month to identify seasonal patterns and long-term sales trends.

### 2. Top 10 Customers by Sales
Identified the top 10 customers contributing the highest total sales, highlighting customer concentration.

### 3. Monthly Profit Trend
Analyzed monthly profit to identify profitable and loss-making periods over time.

### 4. Monthly Profit Margin
Calculated monthly profit margin to evaluate operational efficiency and pricing performance.

### 5. Discount Impact Analysis
Grouped discount levels into ranges to analyze their effect on total sales, total profit, and profit margin.

---

## Excel Data Cleaning & Validation
- Formatted date columns to proper date data types.
- Verified absence of duplicate records.
- Checked for null values in key analytical columns (Sales, Profit, Discount, Customer Name).
- Validated discount ranges (0–1), sales values, and negative profit scenarios.
- Used pivot tables to validate aggregated sales and profit by category.

---

## Power BI Data Model
- Built a clean data model with a dedicated Date table.
- Created a one-to-many relationship between the Date table and the sales table.
- Marked the Date table as the official date table to enable proper time analysis.

---

## DAX Measures
- **Total Sales**: Sum of all sales values.
- **Total Profit**: Sum of all profit values.
- **Profit Margin**: Total Profit divided by Total Sales, calculated safely using DIVIDE.

---

## Power BI Dashboard
The interactive dashboard includes:
- KPI cards for Total Sales, Total Profit, and Profit Margin.
- Monthly Sales and Profit trend line chart.
- Top 10 customers by total sales.
- Profit margin analysis by discount level.

The dashboard is designed to clearly communicate performance trends and support
data-driven business decisions.

---

## Key Insights
- Orders with **no discounts** generate the highest total sales and the highest profit margin.
- **High discount levels (above 30%)** consistently result in negative profit margins,
  indicating unprofitable sales.
- Sales volume increases with discounts, but profitability decreases significantly.
- A small group of customers contributes a large portion of total sales.
- High sales periods do not always correspond to high profitability, emphasizing the importance of margin analysis.

---

## Folder Structure
