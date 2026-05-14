-- ============================================================
-- FMCG MARKET RESEARCH DATABASE
-- File 01: Schema Design
-- Week 1, Day 1 — Create all tables
-- ============================================================

-- 1. REGIONS table
CREATE TABLE IF NOT EXISTS regions (
    region_id     INTEGER PRIMARY KEY,
    region_name   TEXT NOT NULL,
    zone          TEXT NOT NULL,   -- North / South / East / West
    state         TEXT NOT NULL
);

-- 2. CATEGORIES table
CREATE TABLE IF NOT EXISTS categories (
    category_id   INTEGER PRIMARY KEY,
    category_name TEXT NOT NULL,
    segment       TEXT NOT NULL    -- e.g. Personal Care, Food & Beverages, Home Care
);

-- 3. PRODUCTS table
CREATE TABLE IF NOT EXISTS products (
    product_id    INTEGER PRIMARY KEY,
    product_name  TEXT NOT NULL,
    brand         TEXT NOT NULL,
    category_id   INTEGER NOT NULL,
    unit_price    REAL NOT NULL,
    pack_size     TEXT NOT NULL,   -- e.g. 100g, 500ml
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);

-- 4. CUSTOMERS table
CREATE TABLE IF NOT EXISTS customers (
    customer_id   INTEGER PRIMARY KEY,
    customer_name TEXT NOT NULL,
    gender        TEXT NOT NULL,   -- M / F
    age_group     TEXT NOT NULL,   -- 18-25 / 26-35 / 36-50 / 50+
    city          TEXT NOT NULL,
    region_id     INTEGER NOT NULL,
    income_tier   TEXT NOT NULL,   -- Low / Mid / High
    FOREIGN KEY (region_id) REFERENCES regions(region_id)
);

-- 5. TRANSACTIONS table
CREATE TABLE IF NOT EXISTS transactions (
    transaction_id  INTEGER PRIMARY KEY,
    customer_id     INTEGER NOT NULL,
    product_id      INTEGER NOT NULL,
    txn_date        TEXT NOT NULL,     -- YYYY-MM-DD format
    quantity        INTEGER NOT NULL,
    unit_price      REAL NOT NULL,     -- price at time of purchase
    discount_pct    REAL DEFAULT 0,    -- discount % applied
    total_amount    REAL NOT NULL,     -- quantity * unit_price * (1 - discount_pct/100)
    channel         TEXT NOT NULL,     -- Online / Supermarket / Kirana / Pharmacy
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id)  REFERENCES products(product_id)
);

