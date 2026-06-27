-- Find all movies in the "Sci-Fi" genre with a rating above 8.0.
SELECT movie_name, rating, director 
FROM Movie 
WHERE genre = 'Sci-Fi' AND rating > 8.0;


-- List all active coupons that have not expired yet.
SELECT coupon_code, discount_percentage, expiry_date 
FROM Coupons 
WHERE expiry_date >= CURDATE();


-- Display all shows scheduled for a specific date (e.g., '2026-07-10').
SELECT show_id, start_time, base_price 
FROM Shows 
WHERE show_date = '2026-07-10';


-- Display the movie name and all languages it is available in.
SELECT m.movie_name, l.language_name
FROM Movie m
JOIN Movie_Language ml ON m.movie_id = ml.movie_id
JOIN Language l ON ml.language_id = l.language_id
ORDER BY m.movie_name;


-- List all shows along with their Movie Name, Theatre Name, and Ticket Price.
SELECT s.show_id, m.movie_name, t.theatre_name, s.show_date, s.start_time, s.base_price
FROM Shows s
JOIN Movie m ON s.movie_id = m.movie_id
JOIN Theatre t ON s.theatre_id = t.theatre_id;


-- Find the total amount spent on bookings by each customer.
SELECT c.customer_id, c.customer_name, SUM(b.total_amount) AS total_money_spent
FROM Customer c
JOIN Booking b ON c.customer_id = b.customer_id
WHERE b.booking_status = 'Confirmed'
GROUP BY c.customer_id, c.customer_name;


-- Display the total number of tickets sold for each movie.
SELECT m.movie_name, COUNT(t.ticket_id) AS tickets_sold
FROM Movie m
JOIN Shows s ON m.movie_id = s.movie_id
JOIN Tickets t ON s.show_id = t.show_id
WHERE t.ticket_status = 'Booked'
GROUP BY m.movie_id, m.movie_name
ORDER BY tickets_sold DESC;

-- Find the names of theatres that have hosted a show for the movie 'Inception'
SELECT DISTINCT theatre_name 
FROM Theatre 
WHERE theatre_id IN (
    SELECT theatre_id 
    FROM Shows 
    WHERE movie_id = (SELECT movie_id FROM Movie WHERE movie_name = 'Inception')
);


-- Find customers who have made more than 2 successful bookings
SELECT c.customer_name, COUNT(b.booking_id) AS booking_count
FROM Customer c
JOIN Booking b ON c.customer_id = b.customer_id
WHERE b.booking_status = 'Confirmed'
GROUP BY c.customer_id, c.customer_name
HAVING COUNT(b.booking_id) > 2;


-- Find the most expensive ticket ever sold and display the customer name who bought it.
SELECT c.customer_name, b.booking_id, t.ticket_price
FROM Customer c
JOIN Booking b ON c.customer_id = b.customer_id
JOIN Tickets t ON b.booking_id = t.booking_id
WHERE t.ticket_price = (SELECT MAX(ticket_price) FROM Tickets);


-- Find the most booked movie.
SELECT
m.movie_name,
COUNT(*) AS TotalTickets
FROM Tickets tk
JOIN Shows s ON tk.show_id=s.show_id
JOIN Movie m ON s.movie_id=m.movie_id
GROUP BY m.movie_name
ORDER BY TotalTickets DESC;


-- Display actor names and the movies they acted in.
SELECT
a.actor_name,
m.movie_name
FROM Actor a
JOIN Movie_Actor ma ON a.actor_id=ma.actor_id
JOIN Movie m ON ma.movie_id=m.movie_id;
