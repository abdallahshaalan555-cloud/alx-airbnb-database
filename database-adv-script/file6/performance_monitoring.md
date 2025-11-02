# Database Performance Monitoring and Optimization Report

## 1. Overview
This report documents the continuous monitoring and refinement of SQL query performance in the **Airbnb Database** project.  
The main objective was to identify slow queries, analyze execution plans, and implement optimizations to improve database efficiency.

---

## 2. Queries Monitored

### Query 1 — Retrieve Bookings with User and Property Details
```sql
EXPLAIN ANALYZE
SELECT 
    b.id AS booking_id,
    u.name AS user_name,
    p.name AS property_name,
    b.start_date,
    b.end_date
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id;

