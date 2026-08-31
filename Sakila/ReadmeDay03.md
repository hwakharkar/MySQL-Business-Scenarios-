# Day 2 – Customer Insights

## Overview

Understanding customers is one of the primary responsibilities of Sales, Customer Success, and Solution Consulting teams. Businesses rely on customer data to identify growth opportunities, improve engagement, and make data-driven decisions.

In this exercise, I explored customer-related data in the Sakila database using filtering, sorting, joins, and aggregation techniques.

---

## Business Scenario

You are a Solution Consultant working with a DVD rental company. The Sales and Customer Success teams have requested insights into their customer base to answer questions such as:

- Which countries have the most customers?
- Which cities generate the highest customer base?
- Which customers are active?
- Which customers have incomplete contact information?
- Who are the highest-value customers?

Your objective is to retrieve accurate customer information and present meaningful business insights using SQL.

---

## Learning Objectives

- Retrieve customer information from multiple related tables.
- Understand relationships between Customer, Address, City, and Country tables.
- Apply filtering and sorting techniques.
- Use JOINs to combine business data.
- Generate customer summary reports using aggregate functions.

---

## Topics Covered

- INNER JOIN
- LEFT JOIN
- WHERE
- LIKE
- ORDER BY
- GROUP BY
- COUNT()
- LIMIT

---

## Business Questions Solved

### Customer Information
- Display all customers with their city.
- Display all customers with their country.
- Display customers along with their assigned store.

### Customer Segmentation
- Identify active customers.
- Find inactive customers.
- Find customers whose names start with specific letters.
- Display customers alphabetically.

### Geographic Analysis
- Count customers by country.
- Identify the city with the highest number of customers.

### Data Quality
- Find customers with missing phone numbers.

### Customer Value
- Find customers who have made payments.
- Calculate total spending by each customer.
- Identify customers who have never rented a movie.

---

## Tables Used

| Table | Purpose |
|--------|----------|
| customer | Customer master data |
| address | Customer address information |
| city | Customer city |
| country | Customer country |
| payment | Customer payment history |
| rental | Customer rental transactions |

---

## Database Relationships

```text
Country
    │
    ▼
City
    │
    ▼
Address
    │
    ▼
Customer
   │      │
   │      ├────────► Payment
   │
   └──────────────► Rental
```

---

## SQL Concepts Practiced

- Retrieving data using SELECT
- Filtering data using WHERE
- Pattern matching with LIKE
- Sorting results using ORDER BY
- Limiting output using LIMIT
- Joining multiple tables
- Aggregating data using COUNT()
- Grouping records using GROUP BY

---

## Business Value

The SQL queries developed today can help business teams:

- Understand customer demographics.
- Identify high-value geographic markets.
- Improve customer segmentation.
- Detect missing customer information.
- Support marketing campaigns.
- Assist Customer Success teams in customer analysis.

---

## Files Included

```text
Day-02-Customer-Insights/

├── README.md
├── queries.sql
├── answers.md
└── screenshots/
```

---

## Key Learnings

- Learned how customer information is distributed across multiple related tables.
- Used JOINs to retrieve complete customer profiles.
- Applied filtering and sorting to answer business-specific questions.
- Generated customer summary reports using aggregate functions.
- Understood how SQL supports customer analytics and business reporting.

---

## Business Takeaway

A Solution Consultant doesn't just retrieve customer records—they transform raw data into actionable insights that help Sales, Customer Success, and Management teams make informed decisions. Today's exercises demonstrate how SQL can be used to answer common business questions through effective querying and data relationships.

---

## Next Steps

Day 3 focuses on **Revenue Analysis**, where I'll use aggregate functions, grouping, and business reporting techniques to analyze financial performance and identify high-value customers.

---

### Author

**Harshal Wakharkar**

Building practical SQL skills using the MySQL Sakila database to prepare for Solution Consultant, Solutions Engineer, and Business Technology roles.
