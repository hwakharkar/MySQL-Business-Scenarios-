# Revision Challenge 01 – Customer & Business Overview

## Overview

This revision challenge consolidates the SQL concepts covered during **Days 1–3** of my MySQL learning journey using the Sakila database.

The objective is to move beyond individual SQL concepts and apply them together to answer common business questions.

This exercise is designed from a **Solution Consultant perspective**, where understanding the business requirement and translating it into a data query is as important as knowing SQL syntax.

---

## Business Scenario

A DVD rental business wants a basic customer and business overview for its management team.

The management team wants to understand:

* How many customers the business has
* Where customers are located
* How many customers are active or inactive
* Which cities have the highest customer concentration
* Which countries represent the largest customer markets

As a Solution Consultant, my task is to translate these business requirements into SQL queries.

---

## Objectives

* Revise SQL fundamentals from Days 1–3
* Practice joining multiple related tables
* Apply aggregate functions
* Use `GROUP BY` and `ORDER BY`
* Translate business requirements into SQL
* Interpret query results from a business perspective

---

## Concepts Covered

### SQL Fundamentals

* `SELECT`
* `CONCAT()`
* `ORDER BY`
* `LIMIT`

### Aggregation

* `COUNT()`
* `GROUP BY`

### Joins

* `INNER JOIN`

### Conditional Logic

* `CASE`

---

# Challenge Tasks & Solutions

## Task 01 – Customer Overview

### Business Requirement

> Display Customer ID, Full Name, Email, City, and Country for every customer.

### SQL Solution

```sql
SELECT
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS full_name,
    c.email,
    ci.city,
    co.country
FROM customer c
JOIN address a
    ON c.address_id = a.address_id
JOIN city ci
    ON a.city_id = ci.city_id
JOIN country co
    ON ci.country_id = co.country_id
ORDER BY c.customer_id;
```

### Approach

Customer information is distributed across four tables:

```text
customer
    ↓
address
    ↓
city
    ↓
country
```

The tables are joined using their respective primary and foreign key relationships.

### Business Value

This query creates a consolidated customer profile that could be used for:

* CRM reporting
* Customer segmentation
* Customer data migration
* Regional analysis

---

## Task 02 – Total Customer Count

### Business Requirement

> How many customers does the business currently have?

### SQL Solution

```sql
SELECT
    COUNT(*) AS total_customers
FROM customer;
```

### Business Value

Provides a basic customer-base KPI that can be displayed on a management dashboard.

---

## Task 03 – Active vs Inactive Customers

### Business Requirement

> How many customers are active and how many are inactive?

### SQL Solution

```sql
SELECT
    CASE
        WHEN active = 1 THEN 'Active'
        ELSE 'Inactive'
    END AS customer_status,
    COUNT(*) AS total_customers
FROM customer
GROUP BY active;
```

### Business Value

This can help Customer Success and Marketing teams identify the size of the active customer base and potential re-engagement opportunities.

---

## Task 04 – Customer Concentration by City

### Business Requirement

> Which city has the highest number of customers?

### SQL Solution

```sql
SELECT
    ci.city,
    COUNT(*) AS total_customers
FROM customer c
JOIN address a
    ON c.address_id = a.address_id
JOIN city ci
    ON a.city_id = ci.city_id
GROUP BY ci.city
ORDER BY total_customers DESC
LIMIT 1;
```

### Business Value

Identifies the city with the highest customer concentration.

This information could support:

* Regional sales planning
* Marketing campaigns
* Store expansion
* Customer support allocation

---

## Task 05 – Customer Concentration by Country

### Business Requirement

> Which country has the highest number of customers?

### SQL Solution

```sql
SELECT
    co.country,
    COUNT(*) AS total_customers
FROM customer c
JOIN address a
    ON c.address_id = a.address_id
JOIN city ci
    ON a.city_id = ci.city_id
JOIN country co
    ON ci.country_id = co.country_id
GROUP BY co.country
ORDER BY total_customers DESC
LIMIT 1;
```

### Business Value

Provides geographic insight into the customer base and can support market expansion decisions.

---

# Business-to-SQL Mapping

| Business Requirement           | SQL Approach              |
| ------------------------------ | ------------------------- |
| Complete customer profile      | Multiple `INNER JOIN`s    |
| Total customers                | `COUNT()`                 |
| Active vs inactive             | `CASE` + `GROUP BY`       |
| Customers by city              | `GROUP BY` + `COUNT()`    |
| Customers by country           | `GROUP BY` + `COUNT()`    |
| Highest customer concentration | `ORDER BY DESC` + `LIMIT` |

---

# Tables & Relationships

```text
                    country
                       │
                       │ country_id
                       ▼
                      city
                       │
                       │ city_id
                       ▼
                    address
                       │
                       │ address_id
                       ▼
                    customer
```

Understanding these relationships is important before writing queries.

A Solution Consultant needs to understand **where data originates, how entities are connected, and how information can be retrieved for reporting or integration requirements.**

---

# Key Learnings

* A single business requirement may require data from multiple tables.
* Relational databases store information across normalized tables.
* `JOIN` allows related information to be brought together.
* Aggregate functions can convert database records into business KPIs.
* `GROUP BY` is useful for segmentation and management reporting.
* SQL queries should be designed around the business question rather than the SQL function being practiced.

---

# Business Takeaways

This exercise demonstrates how raw database information can be converted into useful business insights.

The resulting queries could form the foundation of:

* Customer dashboards
* Sales reports
* Customer segmentation
* Regional analysis
* Management reporting

---

# Skills Demonstrated

* MySQL
* Relational Database Concepts
* SQL Query Development
* Data Analysis
* Business Requirement Translation
* Customer Segmentation
* Management Reporting

---

# Repository Structure

```text
Revision-Challenge-01/
│
├── README.md
├── revision_challenge_01.sql
└── screenshots/
    ├── task-01-customer-overview.png
    ├── task-02-customer-count.png
    ├── task-03-customer-status.png
    ├── task-04-city-analysis.png
    └── task-05-country-analysis.png
```

---

# Reflection

### What I Practiced

I consolidated the SQL concepts learned during the first three days and applied them to a single business scenario.

### What I Learned

The key learning was that SQL is not only about writing queries. The more important skill is understanding a business requirement, identifying the relevant data sources, understanding relationships between tables, and producing a meaningful result.

### Solution Consultant Perspective

```text
Business Requirement
        ↓
Identify Data
        ↓
Understand Relationships
        ↓
Write SQL
        ↓
Analyze Result
        ↓
Communicate Business Insight
```

This workflow is the approach I aim to develop throughout this SQL portfolio.

---

## Next Revision Challenge

The next challenge will focus on **Customer Segmentation and Revenue Analysis**, combining joins, filtering, aggregation, `HAVING`, and business-oriented analysis.
