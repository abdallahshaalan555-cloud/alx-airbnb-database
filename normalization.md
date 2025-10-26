# Database Normalization - Airbnb Database

The database design follows the Third Normal Form (3NF).

**Steps:**
1. **1NF:** All tables have atomic (indivisible) fields.  
   Example: User table stores only one value per field (e.g., one email per user).

2. **2NF:** All non-key attributes depend on the whole primary key.  
   Example: In the Booking table, start_date and end_date depend on booking_id.

3. **3NF:** There are no transitive dependencies.  
   Example: Property details depend only on property_id, not on the owner’s name
