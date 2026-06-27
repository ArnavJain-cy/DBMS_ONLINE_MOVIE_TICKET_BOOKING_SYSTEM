-- PL SQL
-- Procedure to Add a New Customer
DELIMITER //

CREATE PROCEDURE AddCustomer(
    IN p_customer_id INT,
    IN p_customer_name VARCHAR(100),
    IN p_email VARCHAR(100),
    IN p_contact VARCHAR(15),
	IN p_password VARCHAR(15)
)
BEGIN
    INSERT INTO Customer(customer_id, customer_name, email_id, contact,password)
    VALUES(p_customer_id, p_customer_name, p_email, p_contact,p_password);
END//

DELIMITER ;
CALL AddCustomer(16,'Rohan Sharma','rohan@gmail.com','9321048444','Rohan@123');


-- Procedure to Book a Ticket
DELIMITER //

CREATE PROCEDURE BookMovieTicket(
IN p_booking_id INT,
IN p_customer_id INT,
IN p_coupon_id INT,
IN p_payment VARCHAR(30),
IN p_total_seats INT,
IN p_total_amount DECIMAL(10,2)
)

BEGIN

INSERT INTO Booking
VALUES(
p_booking_id,
p_customer_id,
p_coupon_id,
CURDATE(),
CURTIME(),
'Confirmed',
p_payment,
p_total_seats,
p_total_amount
);

END //

DELIMITER ;
CALL BookMovieTicket(21,2,NULL,'UPI',2,650);


-- Function to Calculate Discount
DELIMITER //

CREATE FUNCTION CalculateDiscount(
amount DECIMAL(10,2),
discount DECIMAL(5,2)
)

RETURNS DECIMAL(10,2)

DETERMINISTIC

BEGIN

RETURN amount-(amount*discount/100);

END //

DELIMITER ;
SELECT CalculateDiscount(1000,20);


-- Trigger-Prevent duplicate customer email IDs.
DELIMITER //

CREATE TRIGGER CheckDuplicateEmail
BEFORE INSERT
ON Customer
FOR EACH ROW
BEGIN
IF EXISTS(
	SELECT *
	FROM Customer
	WHERE email_id=NEW.email_id
)
THEN
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT='Email already exists';
END IF;
END //

DELIMITER ;

-- View - to Display Movie Shows
CREATE VIEW Movie_Show_Details AS

SELECT
    m.movie_name,
    t.theatre_name,
    s.show_date,
    s.start_time,
    s.end_time,
    s.base_price

FROM Movie m

JOIN Shows s
ON m.movie_id = s.movie_id

JOIN Theatre t
ON s.theatre_id = t.theatre_id;

SELECT * FROM Movie_Show_Details;
