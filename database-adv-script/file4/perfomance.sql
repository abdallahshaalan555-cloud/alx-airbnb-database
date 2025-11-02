-- Original Query: Retrieve all bookings with user, property, and payment details
SELECT 
    bookings.id AS booking_id,
    users.name AS user_name,
    users.email AS user_email,
    properties.name AS property_name,
    properties.city AS property_city,
    payments.amount AS payment_amount,
    payments.status AS payment_status,
    bookings.start_date,
    bookings.end_date
FROM bookings
JOIN users ON bookings.user_id = users.id
JOIN properties ON bookings.property_id = properties.id
JOIN payments ON bookings.id = payments.booking_id;


-- Analyze query performance
-- Run this command in your SQL console to check performance:
-- EXPLAIN ANALYZE
-- SELECT ... (same query above);


-- Optimized Query: Reduced joins and selected only necessary columns
SELECT 
    b.id AS booking_id,
    u.name AS user_name,
    p.name AS property_name,
    pay.amount AS payment_amount
FROM bookings b
LEFT JOIN users u ON b.user_id = u.id
LEFT JOIN properties p ON b.property_id = p.id
LEFT JOIN payments pay ON b.id = pay.booking_id;

-- Recommended Indexes:
-- CREATE INDEX idx_bookings_user_id ON bookings(user_id);
-- CREATE INDEX idx_bookings_property_id ON bookings(property_id);
-- CREATE INDEX idx_payments_booking_id ON payments(booking_id);

