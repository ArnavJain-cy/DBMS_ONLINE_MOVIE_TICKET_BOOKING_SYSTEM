--  Admin Table
create table Admin
(
    admin_id INT PRIMARY KEY,
    admin_name VARCHAR(100) NOT NULL,
    password VARCHAR(255) NOT NULL
);

-- Customer Table
create table Customer
(
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    email_id VARCHAR(100) UNIQUE NOT NULL,
    contact VARCHAR(15) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL
);



-- Coupons Table
create table Coupons
(
    coupon_id INT PRIMARY KEY,
    coupon_code VARCHAR(20) UNIQUE NOT NULL,
    discount_percentage DECIMAL(5,2),
    minimum_amount DECIMAL(10,2),
    expiry_date DATE
);



-- Theatre Table
create table Theatre
(
    theatre_id INT PRIMARY KEY,
    theatre_name VARCHAR(100) NOT NULL,
    location VARCHAR(150),
    contact VARCHAR(15)
);



-- Movie Table
create table Movie
(
    movie_id INT PRIMARY KEY,
    movie_name VARCHAR(100) NOT NULL,
    genre VARCHAR(50) NOT NULL,
    duration INT NOT NULL,
    rating DECIMAL(3,1) NOT NULL,
    release_date DATE NOT NULL,
    director VARCHAR(100)
);



-- Language Table
create table Language
(
    language_id INT PRIMARY KEY,
    language_name VARCHAR(50) UNIQUE
);



-- Movie_language Table
create table Movie_Language
(
    movie_id INT,
    language_id INT,

    PRIMARY KEY(movie_id, language_id),

    FOREIGN KEY(movie_id) REFERENCES Movie(movie_id),
    FOREIGN KEY(language_id) REFERENCES Language(language_id)
);



-- Actor Table
create table Actor
(
    actor_id INT PRIMARY KEY,
    actor_name VARCHAR(100)
);


-- Movie_Actor Table
create table Movie_Actor
(
    movie_id INT,
    actor_id INT,

    PRIMARY KEY(movie_id, actor_id),

    FOREIGN KEY(movie_id) REFERENCES Movie(movie_id),
    FOREIGN KEY(actor_id) REFERENCES Actor(actor_id)
);



-- Seats Table
create table Seats
(
    seat_id INT PRIMARY KEY,
    theatre_id INT NOT NULL,
    seat_no VARCHAR(10) NOT NULL,
    seat_type VARCHAR(20),

    FOREIGN KEY(theatre_id)
        REFERENCES Theatre(theatre_id),

    UNIQUE(theatre_id, seat_no)
);



-- Shows Table
create table Shows
(
    show_id INT PRIMARY KEY,
    movie_id INT NOT NULL,
    theatre_id INT NOT NULL,
    show_date DATE,
    start_time TIME,
    end_time TIME,
    base_price DECIMAL(10,2),

    FOREIGN KEY(movie_id)
        REFERENCES Movie(movie_id),

    FOREIGN KEY(theatre_id)
        REFERENCES Theatre(theatre_id)
);



-- Booking Table
create table Booking
(
    booking_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    coupon_id INT,
    booking_date DATE,
    booking_time TIME,
    booking_status VARCHAR(20),
    payment_method VARCHAR(30),
    total_seats INT,
    total_amount DECIMAL(10,2),

    FOREIGN KEY(customer_id)
        REFERENCES Customer(customer_id),

    FOREIGN KEY(coupon_id)
        REFERENCES Coupons(coupon_id)
);



-- Tickets Table
create TABLE Tickets
(
    ticket_id INT PRIMARY KEY,
    booking_id INT NOT NULL,
    show_id INT NOT NULL,
    seat_id INT NOT NULL,
    ticket_price DECIMAL(10,2) NOT NULL,
    ticket_status VARCHAR(20) NOT NULL,
  
    FOREIGN KEY (booking_id) REFERENCES Booking(booking_id),
    FOREIGN KEY (show_id)REFERENCES Shows(show_id),
    FOREIGN KEY (seat_id)REFERENCES Seats(seat_id),
    UNIQUE (show_id, seat_id)
);
