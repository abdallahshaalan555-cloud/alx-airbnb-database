-- Step 1: Create the parent table (partitioned by start_date)
CREATE TABLE bookings (
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    property_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    total_amount DECIMAL(10, 2),
    payment_status VARCHAR(50)
) PARTITION BY RANGE (start_date);


-- Step 2: Create partitions for different time ranges
CREATE TABLE bookings_2023 PARTITION OF bookings
FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');

CREATE TABLE bookings_2024 PARTITION OF bookings
FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

CREATE TABLE bookings_2025 PARTITION OF bookings
FOR VALUES FROM ('2025-01-01') TO ('2026-01-01');


-- Step 3: Example query before partitioning (slow)
-- SELECT * FROM bookings WHERE start_date BETWEEN '2025-01-01' AND '2025-03-31';

-- Step 4: Example query after partitioning (optimized)
EXPLAIN ANALYZE
SELECT * FROM bookings
WHERE start_date BETWEEN '2025-01-01' AND '2025-03-31';

-- The optimizer now scans only the relevant partition instead of the entire table.

