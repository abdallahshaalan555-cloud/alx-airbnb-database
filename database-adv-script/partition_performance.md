# Partitioning Performance Report

## 1. Overview
The `bookings` table became large and queries filtering by `start_date` were slow.
To optimize performance, the table was partitioned by `RANGE (start_date)`.

## 2. Implementation
Created yearly partitions:
- bookings_2023 → data from 2023
- bookings_2024 → data from 2024
- bookings_2025 → data from 2025

## 3. Performance Testing
### Query Used:
```sql
SELECT * FROM bookings WHERE start_date BETWEEN '2025-01-01' AND '2025-03-31';

