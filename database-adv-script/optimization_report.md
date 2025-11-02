# Query Optimization Report

## 1. Original Query
The initial query joined four tables (`bookings`, `users`, `properties`, and `payments`) using INNER JOIN.
This resulted in multiple nested loops and high execution costs due to full table scans.

## 2. Performance Analysis
Using `EXPLAIN ANALYZE` showed:
- Multiple **Nested Loops**
- **Sequential Scans** on large tables
- High query cost and slow performance

**Example:**

