SELECT customers.company_name AS company_name,
        COUNT(orders.customer_id) AS orders,
        STRING_AGG(orders.order_id::character varying, ', ') AS order_ids
FROM orders
JOIN customers ON orders.customer_id = customers.customer_id
WHERE customers.country = 'USA'
GROUP BY customers.company_name
HAVING COUNT(orders.customer_id) < 5
ORDER BY orders, company_name
