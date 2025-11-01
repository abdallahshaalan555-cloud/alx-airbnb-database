-- Insert sample users
INSERT INTO users (name, email, password_hash)
VALUES
('User One', 'user1@example.com', 'pass1'),
('User Two', 'user2@example.com', 'pass2'),
('User Three', 'user3@example.com', 'pass3');

-- Insert sample properties
INSERT INTO properties (user_id, title, description, price, location)
VALUES
(1, 'Property One', 'Description for property one.', 100.00, 'City A'),
(2, 'Property Two', 'Description for property two.', 150.00, 'City B'),
(3, 'Property Three', 'Description for property three.', 200.00, 'City C');

-- Insert sample bookings
INSERT INTO bookings (user_id, property_id, start_date, end_date, total_price)
VALUES
(1, 2, '2025-11-01', '2025-11-05', 600.00),
(2, 1, '2025-11-10', '2025-11-15', 500.00),
(3, 3, '2025-12-01', '2025-12-07', 1200.00);

-- Insert sample payments
INSERT INTO payments (booking_id, amount, payment_method)
VALUES
(1, 600.00, 'credit_card'),
(2, 500.00, 'paypal'),
(3, 1200.00, 'cash');
