# EL&N Café Sales Intelligence
### SQL Business Intelligence & Sales Performance Analysis

![SQL](https://img.shields.io/badge/SQL-MySQL-blue)
![Status](https://img.shields.io/badge/Project-Completed-success)
![Level](https://img.shields.io/badge/Level-Data%20Analyst-orange)

---

# Project Overview

This project is inspired by my experience working at **EL&N Café London**, where I gained first-hand exposure to restaurant operations and customer service.

Using a publicly available restaurant sales dataset, I performed an end-to-end SQL business analysis to simulate how transactional data can be transformed into actionable business insights. The project focuses on revenue analysis, menu performance, sales trends, order behavior, and operational efficiency using industry-standard SQL techniques.

> **Note:** This project is inspired by my experience at EL&N Café London but uses a publicly available dataset for educational and portfolio purposes. It does **not** contain EL&N Café's proprietary business data.

---

# Business Objectives

The project answers several real-world business questions including:

- Which menu items generate the highest revenue?
- Which categories contribute the most to total sales?
- Which days generate the highest sales?
- What is the average order value?
- Which orders exceed the average order value?
- Which menu items perform best within each category?
- How does revenue accumulate over time?
- Which products should be promoted or reviewed?

---

# Dataset

The project consists of two relational tables.

## order_details

| Column |
|---------|
| order_details_id |
| order_id |
| order_date |
| order_time |
| item_id |

Each row represents **one individual menu item sold**.

---

## menu_items

| Column |
|---------|
| menu_item_id |
| item_name |
| category |
| price |

Contains product information and pricing.

---

# 🔗 Database Relationship

```
menu_items
-------------
menu_item_id (PK)

        │

        ▼

order_details
-------------
item_id (FK)
```

---

# SQL Skills Demonstrated

- Data Exploration
- Data Validation
- INNER JOIN
- Aggregate Functions
- GROUP BY
- HAVING
- CASE Statements
- Common Table Expressions (CTEs)
- Subqueries
- Window Functions
- RANK()
- DENSE_RANK()
- ROW_NUMBER()
- Running Totals
- Cumulative Revenue Analysis

---

# Business Analysis Performed

### Data Exploration

- Total Orders
- Total Revenue
- Total Menu Items
- Average Order Value
- Missing Data Checks
- Data Validation

### Revenue Analysis

- Revenue by Category
- Revenue by Product
- Revenue by Date
- Revenue by Weekday
- Revenue Contribution (%)

### Product Performance

- Highest Revenue Products
- Lowest Revenue Products
- Product Rankings
- Top 5 Products Within Each Category

### Advanced SQL Analysis

- Orders Above Average Value
- Product Ranking using Window Functions
- Running Revenue
- Cumulative Revenue
- Revenue Leaderboard
- Category Performance Analysis

---

# Key Business Insights

✔ Identified the restaurant's highest revenue-generating menu items.

✔ Ranked products within each category using SQL Window Functions.

✔ Calculated cumulative revenue to monitor sales growth over time.

✔ Identified high-value customer orders exceeding the average order value.

✔ Determined the highest-performing product categories.

✔ Analyzed sales trends by date and weekday.

✔ Generated business recommendations to improve menu performance and operational efficiency.

---

# Tools Used

- MySQL
- MySQL Workbench
- Git
- GitHub

---

#  Project Structure

```
ELAN-Cafe-Sales-Intelligence/

│

├── 01_Elan_orders_database.sql

├── 02_Elan_orders_query.sql

├── 03_Business_Questions.pdf

├── README.md

├── Business_Insights.md


---

# Skills Demonstrated

- SQL Development
- Business Intelligence
- Data Analytics
- Data Validation
- Relational Database Analysis
- Window Functions
- Analytical Thinking
- Business Reporting
- Data Storytelling

---

# Author

**Shahid Sayyed**

Aspiring Data Analyst

📍 Berlin, Germany

SQL | Excel | Tableau | Python | Data Analytics

Currently building an end-to-end Data Analytics portfolio focused on solving real-world business problems.
