-- (a) Tiering query
SELECT 
    p.product_name,
    SUM(o.amount_inr) AS total_revenue,
    CASE 
        WHEN SUM(o.amount_inr) >= 5000 THEN 'High' 
        WHEN SUM(o.amount_inr) >= 1000 THEN 'Medium' 
        ELSE 'Low' 
    END AS revenue_tier
FROM products p
INNER JOIN orders o ON p.product_id = o.product_id
WHERE o.status = 'Delivered'
GROUP BY p.product_id, p.product_name;

-- (b) Monthly-by-category business report
SELECT 
    p.category, 
    strftime('%Y-%m', o.order_date) AS month, 
    COUNT(o.order_id) AS order_count, 
    SUM(o.amount_inr) AS total_revenue, 
    AVG(o.amount_inr) AS avg_revenue
FROM orders o
INNER JOIN products p ON o.product_id = p.product_id
WHERE o.status = 'Delivered'
GROUP BY p.category, month
ORDER BY p.category, month;

-- (c) Derived-fields and variance query
SELECT 
    p.category,
    SUM(o.amount_inr) AS total_revenue,
    ct.target_revenue_inr,
    (ct.target_revenue_inr - SUM(o.amount_inr)) AS variance,
    ((SUM(o.amount_inr) - ct.target_revenue_inr) * 100.0) / ct.target_revenue_inr AS percentage_variance,
    CASE 
        WHEN SUM(o.amount_inr) >= ct.target_revenue_inr THEN 'Above Target'
        WHEN ((ct.target_revenue_inr - SUM(o.amount_inr)) * 100.0) / ct.target_revenue_inr <= 15 THEN 'Below Target - Watch'
        ELSE 'Below Target - Critical'
    END AS performance_status
FROM orders o
INNER JOIN products p ON o.product_id = p.product_id
INNER JOIN category_targets ct ON p.category = ct.category
WHERE o.status = 'Delivered'
GROUP BY p.category, ct.target_revenue_inr;