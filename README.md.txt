-- Total Revenue
SELECT SUM(p.price * s.quantity) AS total_revenue
FROM sales s JOIN products p ON s.product_id = p.product_id;

-- Top-Selling Products
SELECT p.product_name, SUM(s.quantity) AS total_units_sold
FROM sales s JOIN products p ON s.product_id = p.product_id
GROUP BY p.product_name ORDER BY total_units_sold DESC;

-- Revenue by City
SELECT c.city, SUM(p.price * s.quantity) AS revenue
FROM sales s JOIN customers c ON s.customer_id = c.customer_id
JOIN products p ON s.product_id = p.product_id GROUP BY c.city;