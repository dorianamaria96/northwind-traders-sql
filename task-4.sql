SELECT customers.country AS country,
       COUNT(customers.country) AS number_of_customers
FROM customers
GROUP BY customers.country
HAVING (COUNT(customers.country) > 5)
ORDER BY number_of_customers DESC

