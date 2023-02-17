SELECT EXTRACT(YEAR from orders.order_date) AS year,
        EXTRACT(MONTH FROM orders.order_date) AS month,
        COUNT(order_details.order_id) AS order_count,
        ROUND(SUM(order_details.quantity * order_details.unit_price * (1 - order_details.discount))) AS revenue
from orders
JOIN order_details ON orders.order_id = order_details.order_id
WHERE EXTRACT(YEAR from order_date) = 1997
GROUP BY month, year
