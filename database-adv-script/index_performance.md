# Index Performance

## 1. Created Indexes
- **users.email** → speeds up lookups for user login and filtering by email.
- **bookings.user_id** → improves joins between users and bookings.
- **bookings.property_id** → improves joins between bookings and properties.
- **properties.city** → speeds up city-based property searches.
- **properties.price** → improves sorting and filtering by price.

## 2. Performance Comparison
Using `EXPLAIN` or `ANALYZE` before and after creating indexes showed clear improvement in query performance.

### Example:
**Before index:**

