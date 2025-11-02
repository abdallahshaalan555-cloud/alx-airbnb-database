-- Create index on users.email to speed up user lookups
CREATE INDEX idx_users_email ON users(email);

-- Create index on bookings.user_id to improve join performance between users and bookings
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Create index on bookings.property_id to speed up joins between bookings and properties
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Create index on properties.city to improve search by location
CREATE INDEX idx_properties_city ON properties(city);

-- Create index on properties.price to optimize ordering and filtering by price
CREATE INDEX idx_properties_price ON properties(price);


-- Measure performance before and after creating indexes
-- Example:
-- EXPLAIN SELECT * FROM bookings WHERE user_id = 5;
-- EXPLAIN ANALYZE SELECT * FROM properties WHERE city = 'Cairo';

