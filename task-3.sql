SELECT products.product_name AS product_name,
       ROUND(SUM(order_details.unit_price * order_details.quantity * (1 - order_details.discount))) AS sum
FROM products
JOIN order_details ON products.product_id = order_details.product_id
GROUP BY products.product_name
ORDER BY sum
LIMIT 10


