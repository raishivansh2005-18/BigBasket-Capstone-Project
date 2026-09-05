SELECT COUNT(*) FROM products;
SELECT COUNT(*) FROM customers;
SELECT COUNT(*) FROM orders;
SELECT COUNT(*) FROM category_targets;

SELECT status, COUNT(*) AS status_count 
FROM orders 
GROUP BY status;