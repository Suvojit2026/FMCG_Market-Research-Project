-- ============================================================
-- FMCG MARKET RESEARCH DATABASE
-- File 03: Week 1 Daily Queries
-- Practice these in order — read the comment before each one
-- ============================================================

-- ────────────────────────────────────────────────────────────
-- DAY 1  Explore the tables — always start here
-- ────────────────────────────────────────────────────────────

-- Q1: See all products we carry
SELECT * FROM products;

-- Q2: See all customers
SELECT * FROM customers;

-- Q3: How many rows are in each table?
SELECT COUNT(*) AS total_products  FROM products;
SELECT COUNT(*) AS total_customers FROM customers;
SELECT COUNT(*) AS total_txns      FROM transactions;

-- ────────────────────────────────────────────────────────────
-- DAY 2  Pick specific columns, rename with AS
-- ────────────────────────────────────────────────────────────

-- Q4: Product catalogue — name, brand, price only
SELECT product_name, brand, unit_price AS price_inr
FROM products
ORDER BY unit_price DESC;

-- Q5: Customer list with city and income tier
SELECT customer_name, city, age_group, income_tier
FROM customers
ORDER BY income_tier, city;

-- ────────────────────────────────────────────────────────────
-- DAY 3  Filter with WHERE
-- ────────────────────────────────────────────────────────────

-- Q6: Products priced above ₹150
SELECT product_name, brand, unit_price
FROM products
WHERE unit_price > 150
ORDER BY unit_price DESC;

-- Q7: All HUL products
SELECT product_name, unit_price, pack_size
FROM products
WHERE brand = 'HUL'
ORDER BY product_name;

-- Q8: Female customers aged 26–35
SELECT customer_name, city, income_tier
FROM customers
WHERE gender = 'F' AND age_group = '26-35';

-- ────────────────────────────────────────────────────────────
-- DAY 4  Sort and limit — useful for "Top N" reports
-- ────────────────────────────────────────────────────────────

-- Q9: Top 10 most expensive products
SELECT product_name, brand, unit_price
FROM products
ORDER BY unit_price DESC
LIMIT 10;

-- Q10: Most recent 10 transactions
SELECT transaction_id, customer_id, txn_date, total_amount, channel
FROM transactions
ORDER BY txn_date DESC
LIMIT 10;

-- Q11: Biggest single transactions (highest spend)
SELECT transaction_id, customer_id, product_id, total_amount, channel
FROM transactions
ORDER BY total_amount DESC
LIMIT 5;

-- ────────────────────────────────────────────────────────────
-- DAY 5  DISTINCT and pattern matching
-- ────────────────────────────────────────────────────────────

-- Q12: Which unique brands do we have?
SELECT DISTINCT brand FROM products ORDER BY brand;

-- Q13: Which channels do customers use?
SELECT DISTINCT channel FROM transactions;

-- Q14: All products with 'Soap' in the name
SELECT product_name, brand, unit_price
FROM products
WHERE product_name LIKE '%Soap%';

-- Q15: Customers from cities starting with 'B'
SELECT customer_name, city, region_id
FROM customers
WHERE city LIKE 'B%';

-- ────────────────────────────────────────────────────────────
-- BONUS  Your first "business question" answered in SQL
-- ────────────────────────────────────────────────────────────

-- Q16: Which products were bought via the Online channel?
--      (Simple version before we learn JOINs next week)
SELECT DISTINCT product_id, channel, txn_date
FROM transactions
WHERE channel = 'Online'
ORDER BY txn_date;

-- Q17: Transactions with a discount applied
SELECT transaction_id, product_id, discount_pct, total_amount
FROM transactions
WHERE discount_pct > 0
ORDER BY discount_pct DESC;

