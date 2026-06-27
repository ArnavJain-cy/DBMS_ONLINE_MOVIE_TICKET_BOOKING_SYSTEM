
-- 1. Admin Table (10 records)
INSERT INTO Admin (admin_id, admin_name, password) VALUES
(1, 'Alex Mercer', 'hash_pass_101'),
(2, 'Sarah Connor', 'hash_pass_102'),
(3, 'Bruce Wayne', 'hash_pass_103'),
(4, 'Diana Prince', 'hash_pass_104'),
(5, 'Clark Kent', 'hash_pass_105'),
(6, 'Barry Allen', 'hash_pass_106'),
(7, 'Hal Jordan', 'hash_pass_107'),
(8, 'Arthur Curry', 'hash_pass_108'),
(9, 'Victor Stone', 'hash_pass_109'),
(10, 'Oliver Queen', 'hash_pass_110');


-- 2. Customer Table (12 records)
INSERT INTO Customer (customer_id, customer_name, email_id, contact, password) VALUES
(1, 'John Doe', 'john.doe@email.com', '9876543210', 'cust_pass_01'),
(2, 'Jane Smith', 'jane.smith@email.com', '9876543211', 'cust_pass_02'),
(3, 'Alice Johnson', 'alice.j@email.com', '9876543212', 'cust_pass_03'),
(4, 'Bob Brown', 'bob.b@email.com', '9876543213', 'cust_pass_04'),
(5, 'Charlie Davis', 'charlie.d@email.com', '9876543214', 'cust_pass_05'),
(6, 'Emily Wilson', 'emily.w@email.com', '9876543215', 'cust_pass_06'),
(7, 'Frank Miller', 'frank.m@email.com', '9876543216', 'cust_pass_07'),
(8, 'Grace Lee', 'grace.l@email.com', '9876543217', 'cust_pass_08'),
(9, 'Henry Garcia', 'henry.g@email.com', '9876543218', 'cust_pass_09'),
(10, 'Ivy Martinez', 'ivy.m@email.com', '9876543219', 'cust_pass_10'),
(11, 'Jack Robinson', 'jack.r@email.com', '9876543220', 'cust_pass_11'),
(12, 'Karen Clark', 'karen.c@email.com', '9876543221', 'cust_pass_12');



-- 3. Coupons Table (10 records)
INSERT INTO Coupons (coupon_id, coupon_code, discount_percentage, minimum_amount, expiry_date) VALUES
(1, 'FIRST50', 50.00, 300.00, '2026-12-31'),
(2, 'MOVIETIME', 10.00, 200.00, '2026-08-31'),
(3, 'WEEKEND20', 20.00, 500.00, '2026-09-15'),
(4, 'BLOCKBUSTER', 15.00, 400.00, '2026-10-01'),
(5, 'BOGO50', 25.00, 600.00, '2026-07-20'),
(6, 'MIDWEEK', 12.50, 150.00, '2026-06-30'),
(7, 'SUPERAVER', 30.00, 800.00, '2026-11-11'),
(8, 'FESTIVE25', 25.00, 450.00, '2026-12-25'),
(9, 'NIGHTOWL', 15.00, 250.00, '2026-08-05'),
(10, 'POPCORN', 5.00, 100.00, '2026-09-30');



-- 4. Theatre Table (10 records)
INSERT INTO Theatre (theatre_id, theatre_name, location, contact) VALUES
(1, 'PVR Cinemas', 'Downtown Mall, City Center', '1112223334'),
(2, 'INOX Multiplex', 'Galaxy Galleria, Northside', '2223334445'),
(3, 'Cinepolis', 'Metropolitan Avenue, WestEnd', '3334445556'),
(4, 'Regal Talkies', 'Heritage Square, Old Town', '4445556667'),
(5, 'IMAX Dome', 'Science Park, South Link', '5556667778'),
(6, 'Miraj Cinemas', 'Orchard Road, East View', '6667778889'),
(7, 'Carnival Cinemas', 'High Street Plaza, Suburbs', '7778889990'),
(8, 'Star Movie Theater', 'Broadway Junction', '8889990001'),
(9, 'Majestic Screens', 'Plaza District', '9990001112'),
(10, 'Epic Cinema Halls', 'Valley View Center', '1234567890');



-- 5. Movie Table (12 records)
INSERT INTO Movie (movie_id, movie_name, genre, duration, rating, release_date, director) VALUES
(1, 'Inception', 'Sci-Fi', 148, 8.8, '2010-07-16', 'Christopher Nolan'),
(2, 'The Dark Knight', 'Action', 152, 9.0, '2008-07-18', 'Christopher Nolan'),
(3, 'Interstellar', 'Sci-Fi', 169, 8.6, '2014-11-07', 'Christopher Nolan'),
(4, 'Avatar: The Way of Water', 'Sci-Fi', 192, 7.6, '2022-12-16', 'James Cameron'),
(5, 'Spirited Away', 'Animation', 125, 8.6, '2001-07-20', 'Hayao Miyazaki'),
(6, 'Parasite', 'Thriller', 132, 8.5, '2019-05-30', 'Bong Joon Ho'),
(7, 'Avengers: Endgame', 'Action', 181, 8.4, '2019-04-26', 'Anthony Russo'),
(8, 'Pulp Fiction', 'Crime', 154, 8.9, '1994-10-14', 'Quentin Tarantino'),
(9, 'The Godfather', 'Crime', 175, 9.2, '1972-03-24', 'Francis Ford Coppola'),
(10, 'Gladiator', 'Action', 155, 8.5, '2000-05-05', 'Ridley Scott'),
(11, 'La La Land', 'Romance', 128, 8.0, '2016-12-09', 'Damien Chazelle'),
(12, 'Whiplash', 'Drama', 106, 8.5, '2014-10-10', 'Damien Chazelle');



-- 6. Language Table (10 records)
INSERT INTO Language (language_id, language_name) VALUES
(1, 'English'),
(2, 'Spanish'),
(3, 'French'),
(4, 'Japanese'),
(5, 'Korean'),
(6, 'Hindi'),
(7, 'German'),
(8, 'Mandarin'),
(9, 'Italian'),
(10, 'Tamil');



-- 7. Actor Table (12 records)
INSERT INTO Actor (actor_id, actor_name) VALUES
(1, 'Leonardo DiCaprio'),
(2, 'Christian Bale'),
(3, 'Matthew McConaughey'),
(4, 'Sam Worthington'),
(5, 'Zoe Saldana'),
(6, 'Song Kang-ho'),
(7, 'Robert Downey Jr.'),
(8, 'John Travolta'),
(9, 'Al Pacino'),
(10, 'Russell Crowe'),
(11, 'Ryan Gosling'),
(12, 'Emma Stone');



-- 8. Movie_Language Table (12 records)
INSERT INTO Movie_Language (movie_id, language_id) VALUES
(1, 1), (1, 2), -- Inception in English, Spanish
(2, 1),         -- Dark Knight in English
(3, 1),         -- Interstellar in English
(4, 1), (4, 3), -- Avatar in English, French
(5, 4),         -- Spirited Away in Japanese
(6, 5),         -- Parasite in Korean
(7, 1), (7, 6), -- Avengers in English, Hindi
(8, 1),         -- Pulp Fiction in English
(9, 1), (9, 9), -- The Godfather in English, Italian
(10, 1),        -- Gladiator in English
(11, 1),        -- La La Land in English
(12, 1);        -- Whiplash in English



-- 9. Movie_Actor Table (12 records)
INSERT INTO Movie_Actor (movie_id, actor_id) VALUES
(1, 1),  -- Inception - Leonardo DiCaprio
(2, 2),  -- The Dark Knight - Christian Bale
(3, 3),  -- Interstellar - Matthew McConaughey
(4, 4),  -- Avatar - Sam Worthington
(4, 5),  -- Avatar - Zoe Saldana
(6, 6),  -- Parasite - Song Kang-ho
(7, 7),  -- Avengers - Robert Downey Jr.
(8, 8),  -- Pulp Fiction - John Travolta
(9, 9),  -- The Godfather - Al Pacino
(10, 10),-- Gladiator - Russell Crowe
(11, 11),-- La La Land - Ryan Gosling
(11, 12);-- La La Land - Emma Stone



-- 10. Seats Table (15 records - mapped across different theatres)
INSERT INTO Seats (seat_id, theatre_id, seat_no, seat_type) VALUES
(1, 1, 'A1', 'Standard'), (2, 1, 'A2', 'Standard'), (3, 1, 'G10', 'VIP'),
(4, 2, 'A1', 'Standard'), (5, 2, 'A2', 'Standard'), (6, 2, 'F12', 'VIP'),
(7, 3, 'B1', 'Standard'), (8, 3, 'B2', 'Standard'), (9, 3, 'K1', 'Premium'),
(10, 4, 'C3', 'Standard'), (11, 4, 'C4', 'Standard'), (12, 5, 'E5', 'Premium'),
(13, 6, 'A1', 'Standard'), (14, 7, 'M1', 'VIP'),(15, 8, 'H5', 'Premium');


-- 11. Shows Table (12 records)
INSERT INTO Shows (show_id, movie_id, theatre_id, show_date, start_time, end_time, base_price) VALUES
(1, 1, 1, '2026-07-10', '14:00:00', '16:28:00', 250.00),
(2, 2, 1, '2026-07-10', '18:00:00', '20:32:00', 300.00),
(3, 3, 2, '2026-07-11', '13:00:00', '15:49:00', 280.00),
(4, 4, 3, '2026-07-11', '20:00:00', '23:12:00', 400.00),
(5, 5, 4, '2026-07-12', '10:30:00', '12:35:00', 180.00),
(6, 6, 5, '2026-07-12', '21:00:00', '23:12:00', 350.00),
(7, 7, 2, '2026-07-13', '15:00:00', '18:01:00', 320.00),
(8, 8, 6, '2026-07-13', '19:30:00', '22:04:00', 220.00),
(9, 9, 7, '2026-07-14', '17:00:00', '19:55:00', 200.00),
(10, 10, 8, '2026-07-14', '14:00:00', '16:35:00', 240.00),
(11, 11, 1, '2026-07-15', '11:00:00', '13:08:00', 260.00),
(12, 12, 3, '2026-07-15', '16:30:00', '18:16:00', 270.00);

-- 12. Booking Table (11 records)
INSERT INTO Booking (booking_id, customer_id, coupon_id, booking_date, booking_time, booking_status, payment_method, total_seats, total_amount) VALUES
(1, 1, 1, '2026-07-01', '10:15:00', 'Confirmed', 'Credit Card', 2, 250.00), -- 50% off on 500
(2, 2, NULL, '2026-07-02', '14:20:00', 'Confirmed', 'UPI', 1, 300.00),
(3, 3, 2, '2026-07-03', '09:05:00', 'Confirmed', 'Debit Card', 2, 504.00),  -- 10% off on 560
(4, 4, NULL, '2026-07-04', '18:45:00', 'Pending', 'Net Banking', 1, 400.00),
(5, 5, 3, '2026-07-05', '22:10:00', 'Confirmed', 'UPI', 2, 576.00),          -- 20% off on 720
(6, 6, NULL, '2026-07-05', '11:30:00', 'Cancelled', 'Credit Card', 1, 220.00),
(7, 7, NULL, '2026-07-06', '13:12:00', 'Confirmed', 'UPI', 1, 200.00),
(8, 8, NULL, '2026-07-07', '17:50:00', 'Confirmed', 'Wallet', 1, 240.00),
(9, 9, 4, '2026-07-08', '12:00:00', 'Confirmed', 'Credit Card', 2, 442.00),   -- 15% off on 520
(10, 10, NULL, '2026-07-09', '15:25:00', 'Confirmed', 'UPI', 1, 270.00),
(11, 11, NULL, '2026-07-09', '19:40:00', 'Confirmed', 'Debit Card', 1, 250.00);


-- 13. Tickets Table (15 records)
INSERT INTO Tickets (ticket_id, booking_id, show_id, seat_id, ticket_price, ticket_status) 
VALUES
(1, 1, 1, 1, 250.00, 'Booked'),
(2, 1, 1, 2, 250.00, 'Booked'),
(3, 2, 2, 3, 300.00, 'Booked'),
(4, 3, 3, 4, 280.00, 'Booked'),
(5, 3, 3, 5, 280.00, 'Booked'),
(6, 4, 4, 9, 400.00, 'Reserved'),
(7, 5, 6, 12, 360.00, 'Booked'),
(8, 5, 6, 6, 360.00, 'Booked'),
(9, 6, 8, 13, 220.00, 'Cancelled'),
(10, 7, 9, 14, 200.00, 'Booked'),
(11, 8, 10, 15, 240.00, 'Booked'),
(12, 9, 11, 1, 260.00, 'Booked'),
(13, 9, 11, 2, 260.00, 'Booked'),
(14, 10, 12, 7, 270.00, 'Booked'),
(15, 11, 1, 3, 250.00, 'Booked');
