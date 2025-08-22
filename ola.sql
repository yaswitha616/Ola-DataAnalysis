Create Database Ola;
Use Ola;

# Create a view 
CREATE VIEW Successful_bookings AS
SELECT * FROM Bookings
WHERE Booking_Status = 'Success';
# Retrieve all successful bookings
SELECT * FROM Successful_bookings;

# Find the average ride distance for each vehicle type
SELECT Vehicle_Type, AVG(Ride_Distance) AS avg_distance
FROM Bookings
GROUP BY Vehicle_Type;

# Get the total number of cancelled rides by customers
SELECT COUNT(*) FROM Bookings
WHERE Booking_Status = 'Canceled by Customer';

# List the top 5 customers who booked the highest number of rides
SELECT Customer_ID, COUNT(Booking_ID) as total_rides
FROM Bookings
GROUP BY Customer_ID
ORDER BY total_rides DESC LIMIT 5; 

# Get the number of rides cancelled by drivers due to personal and car-related issues
SELECT COUNT(*) FROM Bookings
WHERE Canceled_Rides_by_Driver = 'Personal & Car related issue';

# Find the maximum and minimum driver ratings for Prime Sedan bookings
SELECT MAX(Driver_Ratings) as max_rating,
MIN(Driver_Ratings) as min_rating
FROM Bookings WHERE Vehicle_Type = 'Prime Sedan';

# Retrieve all rides where payment was made using UPI
SELECT * FROM Bookings
WHERE Payment_Method = 'UPI';

# Find the average customer rating per vehicle type
SELECT Vehicle_Type, AVG(Customer_Rating) as avg_customer_rating
FROM Bookings
GROUP BY Vehicle_Type;

# Calculate the total booking value of rides completed successfully
SELECT SUM(Booking_Value) as total_successful_value
FROM Bookings
WHERE Booking_Status = 'Success';

# List all incomplete rides along with the reason
SELECT Booking_ID, Incomplete_Rides_Reason
FROM Bookings
WHERE Incomplete_Rides = 'Yes';



