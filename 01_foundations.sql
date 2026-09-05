-- SELECT / WHERE
SELECT * FROM orders WHERE city = 'Mumbai';

-- DISTINCT
SELECT DISTINCT category FROM products;

-- ORDER BY + LIMIT
SELECT * FROM orders ORDER BY amount_inr DESC LIMIT 5;

-- Alias (AS)
SELECT COUNT(*) AS total_orders FROM orders;

-- IN
SELECT * FROM orders WHERE payment_mode IN ('UPI', 'Credit Card', 'Cash on Delivery');

-- BETWEEN
SELECT * FROM orders WHERE amount_inr BETWEEN 500 AND 2000;

-- NOT BETWEEN
SELECT * FROM orders WHERE amount_inr NOT BETWEEN 500 AND 2000;

-- IS NULL
SELECT * FROM orders WHERE rating IS NULL;