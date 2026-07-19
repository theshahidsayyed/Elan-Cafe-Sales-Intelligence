USE Elan_Orders;

Select * from order_details;

Select * from menu_items;


-- DATA EXPLORATION

-- Q1. How many menu items are there ?
select count(menu_item_id) from menu_items;

-- Q2. How many total orders were placed ?
select count(order_details_id) from order_details;

-- Q3. How many cuisine categories exist ?
select Distinct category from menu_items;

-- Q4. what is the most expensive item ?
select item_name,price from menu_items
where price = (select max(price) from menu_items);

-- Q5. what is the cheapest item ?
select item_name,price from menu_items
where price = (select min(price) from menu_items);

-- Q6. What is the date range of the dataset
select min(order_date) as First_order_date,
 max(order_date) as Last_order_date
from order_details;

-- SALES ANALYSIS

-- Q7. What is the total revenue ?

select sum(m.price) As Total_Revenue
from menu_items m
inner join order_details o
on o.item_id = m.menu_item_id;

-- Q8. what is the average order per value ?

WITH order_total as
     ( select  od.order_id,
        SUM(mi.price) AS order_revenue
    FROM order_details od
    INNER JOIN menu_items mi
        ON od.item_id = mi.menu_item_id
    GROUP BY od.order_id
)
Select Avg(order_revenue) as Average_order_value
from order_total;

-- Q9. Which category generates the highes revenue ?

select mi.category,
	SUM(mi.price) AS Total_revenue
    FROM order_details od
    INNER JOIN menu_items mi
	ON od.item_id = mi.menu_item_id
    GROUP BY mi.category
    order by Total_revenue desc
    limit 1;

-- PRODUCT ANALYSIS

-- Q10. Find top 10 selling items ?

select m.item_name, count(o.order_id) as Total_order
FROM order_details o
INNER JOIN menu_items m
ON o.item_id = m.menu_item_id
GROUP BY m.item_name
Order by Total_order desc
limit 10;

-- Q11. which menu item is ordered the least ?

select m.item_name, count(o.order_id) as Total_order
FROM order_details o
INNER JOIN menu_items m
ON o.item_id = m.menu_item_id
GROUP BY m.item_name
Order by Total_order asc
limit 1;

-- Q12. which product deserve more promotion ?
-- The product with least sales needs more promotion
-- Hence, lets find out which product generates least revenue

select mi.item_name,
	SUM(mi.price) AS Total_revenue
    FROM order_details od
    INNER JOIN menu_items mi
	ON od.item_id = mi.menu_item_id
    GROUP BY mi.item_name
    order by Total_revenue asc
    limit 1;
    
    
-- TIME ANALYSIS

-- Q13. Which day has the highes sales ?
-- Since the question says which "day" has the highest sales, we need to find the Day of the week first by using Dayname().

select dayname(o.order_date) as day_of_the_week,
	sum(m.price) AS Highest_sales
    FROM order_details o
    INNER JOIN menu_items m
	ON o.item_id = m.menu_item_id
    GROUP BY day_of_the_week
    order by Highest_sales desc
    limit 1;
    
    
-- Q14.  which month generates the highest sales ?

    select month(o.order_date) as month_of_the_year,
	sum(m.price) AS Highest_sales
    FROM order_details o
    INNER JOIN menu_items m
	ON o.item_id = m.menu_item_id
    GROUP BY month_of_the_year
    order by Highest_sales desc
    limit 1;
    
-- Q15. Which hour receives the most order ?
    
    select hour(o.order_time) as busiest_hour,
	sum(m.price) AS Highest_sales
    FROM order_details o
    INNER JOIN menu_items m
	ON o.item_id = m.menu_item_id
    GROUP BY busiest_hour
    order by Highest_sales desc
    limit 1;


-- ADVANCED ANALYSIS

-- Q.16 Rank product by revenue

select m.item_name,
sum(m.price) as total_revenue,
rank() over (order by sum(m.price) desc) as revenue_rank
from menu_items m
inner join order_details o
on o.item_id = m.menu_item_id
group by m.item_name;


-- Q17. Find the top 5 products in each category

WITH product_revenue as
(
select m.item_name, m.category,
sum(m.price) as total_revenue,
rank() over(partition by m.category order by sum(m.price)) as revenue_rank
from menu_items m
inner join order_details o
on o.item_id = m.menu_item_id
group by m.item_name, m.category
)
select * from product_revenue
where revenue_rank <= 5
order by category, revenue_rank;

-- Q18. Calculate Cumulative revenue

select o.order_date,
sum(m.price) as daily_revenue,
sum(sum(m.price)) over (order by o.order_date) as cumulative_revenue
from order_details o
inner join menu_items m
on o.item_id = m.menu_item_id
group by o.order_date
order by o.order_Date;

-- Q19. Find orders above average values

WITH revenue as
(
select o.order_id,
sum(m.price) as order_total
from order_details o
inner join menu_items m
on o.item_id = m.menu_item_id
group by o.order_id
)

 -- Average Order Value is 29.799

select order_id, order_total as orders_above_average from revenue
where order_total > (select avg(order_total) from revenue)
order by order_total;

-- Q20. Rank orders by total spending

with order_Spending as
(
select o.order_id,
sum(m.price) as order_total
from order_details o
inner join menu_items m
on o.item_id = m.menu_item_id
group by o.order_id
)

select order_id, order_total,
rank() over (order by order_total desc) as spending_ranking
from order_spending
order by spending_ranking;











