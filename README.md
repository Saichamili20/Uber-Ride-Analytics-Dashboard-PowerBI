# 🚖 Uber Ride Analytics | MySQL + Power BI

## 📌 Project Overview

The **Uber Ride Analytics** project is an end-to-end data analytics solution developed to analyze ride booking data and uncover meaningful business insights. The project demonstrates the complete analytics workflow, including data cleaning, exploratory analysis, business-focused SQL querying, and interactive dashboard development using Power BI.

The primary objective of this project is to help stakeholders understand booking trends, revenue performance, customer behavior, driver performance, and operational efficiency through data-driven insights.

---

## 🎯 Business Problem

Ride-hailing companies generate massive amounts of booking data every day. Analyzing this data is essential for improving customer satisfaction, increasing operational efficiency, identifying revenue opportunities, and making informed business decisions.

This project answers important business questions such as:

- How many rides were completed and cancelled?
- Which vehicle types generate the highest revenue?
- Which payment methods are most preferred?
- What are the major reasons for ride cancellations?
- Which pickup and drop locations have the highest demand?
- How do customer and driver ratings vary across vehicle types?
- What operational metrics indicate service efficiency?

---

## 🛠 Tech Stack

- **MySQL** – Data Cleaning & Business Analysis
- **Power BI** – Interactive Dashboard & Data Visualization
- **SQL** – Data Cleaning, Aggregations, Window Functions, CTEs
- **Git & GitHub** – Version Control & Project Documentation

---

## 📂 Dataset

The dataset contains over **30,000 Uber ride booking records** with information including:

- Booking Details
- Booking Status
- Customer ID
- Vehicle Type
- Pickup & Drop Locations
- Booking Value
- Ride Distance
- Driver Ratings
- Customer Ratings
- Payment Method
- Cancellation Reasons
- Average Vehicle Time to Arrive (VTAT)
- Average Customer Time to Arrive (CTAT)

---

# 📋 Project Workflow

```
Dataset
      │
      ▼
Data Cleaning (MySQL)
      │
      ▼
Business Analysis (SQL)
      │
      ▼
Power BI Dashboard
      │
      ▼
Business Insights
```

---

# 🧹 Data Cleaning

The dataset was cleaned using MySQL before analysis.

### Cleaning tasks performed

- Inspected dataset structure
- Identified missing values
- Checked duplicate Booking IDs
- Replaced missing numerical values where appropriate
- Removed invalid records with missing Booking IDs
- Investigated NULL payment methods
- Verified data quality before analysis

---

# 📊 SQL Business Analysis

Business analysis was performed using SQL and organized into the following sections:

## Booking Performance

- Total Bookings
- Booking Status Distribution
- Success Rate
- Cancellation Rate

---

## Revenue Analysis

- Total Revenue
- Average Booking Value
- Revenue by Vehicle Type
- Revenue per Vehicle
- Trips by Vehicle Type

---

## Customer Behaviour

- Preferred Payment Method
- Average Customer Rating
- Customer Rating by Vehicle Type
- Customer Distribution

---

## Driver Performance

- Average Driver Rating
- Driver Cancellation Reasons
- Average VTAT
- Average CTAT
- Driver Performance by Vehicle Type

---

## Operational Insights

- Top Pickup Locations
- Top Drop Locations
- Ride Distance Analysis
- Incomplete Ride Analysis
- Customer Cancellation Reasons

---

## Advanced SQL Concepts Used

- CASE Statements
- Aggregate Functions
- GROUP BY
- HAVING
- ORDER BY
- Window Functions
  - ROW_NUMBER()
  - RANK()
  - DENSE_RANK()
- Common Table Expressions (CTEs)
- Subqueries

---

# 📈 Power BI Dashboard

An interactive **three-page Power BI dashboard** was created to visualize key business metrics.

### Dashboard Pages

### 1️⃣ Executive Overview

- Total Bookings
- Total Revenue
- Completed Rides
- Cancellation Rate
- Average Customer Rating
- Revenue per Ride
- Ride Distance Analysis

---

### 2️⃣ Vehicle & Location Analysis

- Revenue by Vehicle Type
- Vehicle Popularity
- Pickup Location Analysis
- Driver vs Customer Ratings
- VTAT vs CTAT Comparison

---

### 3️⃣ Customer & Monthly Analysis

- Monthly Revenue Trend
- Payment Method Distribution
- Booking Status Distribution
- Monthly Ride Analysis

---

# 📊 Key Business Insights

Some important insights derived from the analysis include:

- Identified the most popular vehicle types based on booking volume.
- Determined the highest revenue-generating vehicle categories.
- Analyzed booking success and cancellation rates.
- Evaluated customer satisfaction using customer ratings.
- Compared driver performance across different vehicle categories.
- Identified the most frequently used payment methods.
- Discovered high-demand pickup and drop locations.
- Evaluated ride distance trends and operational efficiency.

---

# 📁 Repository Structure

```
Uber-Ride-Analytics/
│
├── dataset/
│   └── uberrides.csv
│
├── sql/
│   ├── 01_data_cleaning.sql
│   ├── 02_booking_performance.sql
│   ├── 03_revenue_analysis.sql
│   ├── 04_customer_behaviour.sql
│   ├── 05_driver_performance.sql
│   ├── 06_operational_insights.sql
│   └── 07_advanced_sql.sql
│
├── powerbi/
│   └── Uber_Ride_Analytics.pbix
│
├── screenshots/
│   ├── overview.png
│   ├── vehicle_analysis.png
│   └── customer_analysis.png
│
├── README.md
└── insights.md
```

---

# 🚀 Skills Demonstrated

- Data Cleaning
- SQL Querying
- Business Analysis
- Data Visualization
- Dashboard Design
- Analytical Thinking
- KPI Development
- Data Storytelling
- GitHub Documentation
- Power BI Reporting

---

# 🎯 Future Enhancements

- Connect Power BI directly to MySQL for live reporting
- Add SQL Views for reusable business logic
- Develop KPI alerts using DAX
- Create predictive analytics using Python
- Automate data refresh and reporting

---

⭐ If you found this project useful, feel free to star the repository!ools
- Add real-time data integration
- Improve dashboard UI/UX design
- Deploy dashboard online using Power BI Service
- Enhance predictive analytics using machine learning
