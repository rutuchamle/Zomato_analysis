use zomato_p;
-- Total Orders
SELECT COUNT(*) AS total_orders
FROM customer;

-- Top 5 Restaurants by Revenue
SELECT Restaurant,
SUM(Revenue) AS total_revenue
FROM customer
GROUP BY Restaurant
ORDER BY total_revenue DESC
LIMIT 5;

-- Most Ordered Food Items
SELECT Food_Item,
COUNT(*) AS total_orders
FROM customer
GROUP BY Food_Item
ORDER BY total_orders DESC
LIMIT 5;

-- Revenue by Payment Method
SELECT Payment_Method,
SUM(Revenue) AS total_revenue
FROM customer
GROUP BY Payment_Method;

-- Delivery Status Count
SELECT Delivery_Status,
COUNT(*) AS total_orders
FROM customer
GROUP BY Delivery_Status;

-- Average Delivery Time
SELECT AVG(Delivery_Time_Minutes) AS average_delivery_time
FROM customer;

-- Restaurant with Highest Revenue
SELECT Restaurant,
SUM(Revenue) AS total_revenue
FROM customer
GROUP BY Restaurant
ORDER BY total_revenue DESC
LIMIT 1;

-- Monthly Revenue
SELECT Month,
SUM(Revenue) AS monthly_revenue
FROM customer
GROUP BY Month
ORDER BY Month;

-- Orders with Revenue Greater Than Average
SELECT *
FROM customer
WHERE Revenue > (
SELECT AVG(Revenue)
FROM customer
);

-- Average Discount Percentage
SELECT AVG(Discount_Percentage) AS average_discount
FROM customer;