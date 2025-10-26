# ER Diagram - Airbnb Database

This ER diagram shows the main entities and relationships in the Airbnb system.

**Entities:**
- User (id, name, email, password)
- Property (id, title, location, price, owner_id)
- Booking (id, user_id, property_id, start_date, end_date)
- Payment (id, booking_id, amount, status)
- Review (id, user_id, property_id, rating, comment)

**Relationships:**
- One User can have many Properties.
- One User can make many Bookings.
- One Property can have many Bookings.
- Each Booking has one Payment.
- Users can write many Reviews for Properties.
