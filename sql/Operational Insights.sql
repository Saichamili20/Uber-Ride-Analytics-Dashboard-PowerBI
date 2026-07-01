/*
Tasks Performed:
Most popular pickup locations
Most popular drop locations
Longest and shortest ride distances
Incomplete rides and reasons
Peak booking times (using date/time functions)
Top-performing locations
*/
#Top 10 Pickup Locations
SELECT
    `Pickup Location`,
    COUNT(*) AS total_pickups
FROM uberrides
GROUP BY `Pickup Location`
ORDER BY total_pickups DESC
LIMIT 10;
#Top 10 Drop Locations
SELECT
    `Drop Location`,
    COUNT(*) AS total_dropoffs
FROM uberrides
GROUP BY `Drop Location`
ORDER BY total_dropoffs DESC
LIMIT 10;
#Ride Distance Analysis
SELECT
    ROUND(MIN(CAST(`Ride Distance` AS DECIMAL(10,2))),2) AS shortest_ride,
    ROUND(MAX(CAST(`Ride Distance` AS DECIMAL(10,2))),2) AS longest_ride,
    ROUND(AVG(CAST(`Ride Distance` AS DECIMAL(10,2))),2) AS average_ride
FROM uberrides
WHERE `Ride Distance` IS NOT NULL;
#Average Ride Distance by Vehicle Type
SELECT
    `Vehicle Type`,
    ROUND(AVG(CAST(`Ride Distance` AS DECIMAL(10,2))),2) AS avg_distance
FROM uberrides
WHERE `Ride Distance` IS NOT NULL
GROUP BY `Vehicle Type`
ORDER BY avg_distance DESC;
#Incomplete Ride Reasons
SELECT
    `Incomplete Rides Reason`,
    COUNT(*) AS total
FROM uberrides
WHERE `Incomplete Rides Reason` IS NOT NULL
GROUP BY `Incomplete Rides Reason`
ORDER BY total DESC;
# Cancellation Reasons (Customer)
SELECT
    `Reason for cancelling by Customer`,
    COUNT(*) AS total
FROM uberrides
WHERE `Reason for cancelling by Customer` IS NOT NULL
GROUP BY `Reason for cancelling by Customer`
ORDER BY total DESC;
#Booking Value by Pickup Location
SELECT
    `Pickup Location`,
    ROUND(SUM(CAST(`Booking Value` AS DECIMAL(10,2))),2) AS revenue
FROM uberrides
GROUP BY `Pickup Location`
ORDER BY revenue DESC
LIMIT 10;