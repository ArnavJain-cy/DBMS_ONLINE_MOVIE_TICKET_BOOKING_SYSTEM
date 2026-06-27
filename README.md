# 🎬 Online Movie Ticket Booking System

## 📌 Project Overview

The **Online Movie Ticket Booking System** is a Database Management System (DBMS) project developed using **MySQL**. It simulates the functionality of an online movie ticket booking platform where customers can browse movies, view show timings, book tickets, apply coupons, and make payments.

The project demonstrates the use of relational database concepts such as normalization, primary keys, foreign keys, joins, views, stored procedures, functions, and triggers.

---

## 🎯 Objectives

- Manage customer information.
- Maintain movie and theatre details.
- Schedule movie shows.
- Manage seat allocation.
- Book movie tickets.
- Apply discount coupons.
- Store ticket information.
- Generate reports using SQL queries and views.
- Demonstrate PL/SQL/MySQL procedural programming concepts.

---

## 🛠 Technologies Used

- MySQL
- MySQL Workbench
- SQL
- MySQL Stored Procedures
- Functions
- Triggers
- Views

---
## 📋 Database Tables

The project contains the following tables:

1. Admin
2. Customer
3. Coupons
4. Theatre
5. Movie
6. Language
7. Movie_Language
8. Actor
9. Movie_Actor
10. Seats
11. Shows
12. Booking
13. Tickets

---

## 🔗 Entity Relationships

- One Theatre has many Shows.
- One Movie can have many Shows.
- One Customer can make multiple Bookings.
- One Booking can contain multiple Tickets.
- One Movie can have multiple Actors.
- One Movie can be available in multiple Languages.
- One Coupon can be applied to many Bookings.

---

## 🖥 Project Structure

```
OnlineMovieTicketBookingSystem/

│
├── Create_Database.sql
├── Create_Tables.sql
├── Insert_Data.sql
├── SQL_Queries.sql
├── Views.sql
├── Procedures.sql
├── Functions.sql
├── Triggers.sql
├── README.md
└── ER_Diagram.png
```

---

## 🚀 How to Run the Project

### Step 1

Create the database.

```sql
CREATE DATABASE OnlineMovieTicketBookingSystem;
USE OnlineMovieTicketBookingSystem;
```

### Step 2

Execute the table creation script.

### Step 3

Insert the sample data.

### Step 4

Run SQL queries.

### Step 5

Execute procedures, functions, triggers, and views.

---

## 📜 License

This project is developed for educational purposes only.
