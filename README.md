# FMCG Consumer Market Research — SQL Project

**Level:** Beginner → Intermediate  
**Domain:** FMCG (Fast-Moving Consumer Goods) — Indian market  
**Tool:** SQLite (free, no server needed) or PostgreSQL  

---

## Project Overview

This project simulates a real-world FMCG market research database covering **6 months** of consumer purchase data across 10 Indian cities. You will build the database from scratch, query it daily, and progressively add statistical analysis skills.

## Dataset Summary

| Table          | Rows | Description                                  |
|----------------|------|----------------------------------------------|
| `regions`      | 10   | Indian cities across North/South/East/West   |
| `categories`   | 12   | Product segments (Personal Care, Food, etc.) |
| `products`     | 40   | Real FMCG brands: HUL, P&G, Nestle, Tata... |
| `customers`    | 25   | Diverse demographics, income tiers           |
| `transactions` | 200  | Jan–Jun 2024, 4 channels, with discounts     |

## Key Findings (preview)
- **Tea & Coffee** is the top revenue category (₹7,917)
- **Supermarket** is the dominant channel (63 transactions)
- **Nescafe Classic** is the single highest-revenue product
- **Kirana stores** have the highest transaction count (79)

---

## Weekly Plan

| Week | Topic                    | Skills Learned                              |
|------|--------------------------|---------------------------------------------|
| 1    | Schema & Basics          | CREATE, INSERT, SELECT, WHERE, ORDER BY     |
| 2    | Filtering & Exploration  | LIKE, IN, BETWEEN, DISTINCT, LIMIT          |
| 3    | Aggregations             | COUNT, SUM, AVG, GROUP BY, HAVING           |
| 4    | JOINs & Relationships    | INNER JOIN, LEFT JOIN, Subqueries, CTEs     |
| 5    | Statistical Analysis     | Window functions, RANK, running totals      |

---

## How to Run

### Option 1: SQLite (recommended for beginners)
```bash
# Install SQLite (free)
# Mac: brew install sqlite
# Windows: download from sqlite.org
# Linux: sudo apt install sqlite3

# Load the database
sqlite3 fmcg.db
.read 01_schema.sql
.read 02_data.sql

# Run your queries
.read 03_week1_queries.sql
```

### Option 2: Online (no install needed)
1. Go to [sqliteonline.com](https://sqliteonline.com)
2. Copy-paste each file's contents and run

---

## Files

```
fmcg_sql_project/
├── README.md               ← This file
├── 01_schema.sql           ← CREATE TABLE statements
├── 02_data.sql             ← INSERT data (all 5 tables)
└── 03_week1_queries.sql    ← Week 1 daily practice queries
```

---

## Business Questions You'll Answer

By the end of 5 weeks, you'll be able to answer:
- Which product category drives the most revenue?
- Which city has the highest average spend per customer?
- What is HUL's market share vs competitors?
- Which customer segment (age/income) buys the most online?
- How does monthly revenue trend over 6 months?
- Which products are frequently bought together?

