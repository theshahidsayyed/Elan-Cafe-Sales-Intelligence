# ☕ EL&N Café Sales Intelligence

# Business Insights & Recommendations

## Executive Summary

This analysis explores restaurant sales performance using SQL to uncover meaningful business insights from transactional data.

The objective was to simulate how restaurant managers can leverage data to improve revenue, optimize menu performance, and support operational decision-making.

---

# Key Findings

## 1. Revenue Performance

The total revenue genrated was 159217.90.

### Recommendation

- Continue promoting best-selling products.
- Ensure high-demand items remain consistently available.
- Consider premium or seasonal variations of top-performing products.

---

## 2. Category Performance

Revenue analysis shows that some menu categories significantly outperform others.
The Category which generated the most revenue is Italian with total value of 49462.70

### Recommendation

- Increase marketing efforts for high-performing categories.
- Review pricing strategy for low-performing categories.
- Evaluate whether underperforming categories should be refreshed.

---

## 3. Product Rankings

Window Functions were used to rank menu items by revenue and identify the top-performing products within each category.
Top 10 selling products are:
1. Hamburger
2. Edamame
3. Korean Beef Bowl
4. Cheeseburger
5. French Fries
6. Tofu Pad Thai
7. Steak Torta
8. Spaghetti & Meatballs
9. Mac & Cheese
10. Chips & Salsa


### Recommendation

- Feature top-ranked products more prominently.
- Use rankings for inventory planning and promotional campaigns.

---

## 4. Average Order Value

Average Order value is 29.799

Also, Orders above the average order value were identified using CTEs and Subqueries.



### Recommendation

- Study these high-value orders.
- Develop bundle offers that encourage similar purchasing behavior.

---

## 5. Sales Trends

Revenue trends over time were analyzed using cumulative revenue calculations.

### Recommendation

- Monitor long-term growth.
- Compare future periods against current sales performance.
- Detect seasonal demand patterns.

---

## 6. Daily Sales Performance

Sales vary noticeably across different weekdays.

Example:

1) We are generating the highest sales on Monday which is around 26007.45
2) March is expected as the busiest month of the year
3) The shop gets busy around 12pm.


### Recommendation

- Schedule additional staff during high-demand periods.
- Launch targeted promotions during slower business days.

---

## 7. Menu Optimization

Some products consistently generate low revenue despite being available on the menu.

Chicken Tacos is ordered the least among all the products, it definitely needs promotion.

### Recommendation

- Review customer feedback.
- Improve visibility.
- Consider replacing persistently underperforming products.

---

# Technical Highlights

The project demonstrates practical SQL skills including:

- Relational Database Analysis
- Data Validation
- INNER JOIN
- Aggregate Functions
- GROUP BY
- CASE Statements
- Common Table Expressions (CTEs)
- Subqueries
- Window Functions
- Ranking Functions
- Running Totals
- Cumulative Revenue

---

# Business Value

This project demonstrates how SQL can transform transactional restaurant data into actionable business intelligence.

The findings can support decision-making in:

- Menu Engineering
- Revenue Optimization
- Inventory Planning
- Promotional Strategy
- Restaurant Operations
- Staffing Decisions

---

# Conclusion

Restaurant businesses generate thousands of transactional records every month. When analyzed effectively, this data provides valuable insights into customer purchasing behavior, menu performance, and overall business health.

This project demonstrates how SQL can be used to answer real business questions and support data-driven decision-making through structured analysis and clear business reporting.

---

## Disclaimer

This project is inspired by my experience working at **EL&N Café London** and uses a publicly available restaurant sales dataset for educational and portfolio purposes. It does **not** contain confidential or proprietary business information from EL&N Café.
