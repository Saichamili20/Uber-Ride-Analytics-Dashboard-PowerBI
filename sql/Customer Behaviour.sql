/*
Tasks Performed:

Average driver rating
Driver cancellation reasons
Average VTAT (Vehicle Time to Arrive)
Average CTAT (Customer Time to Arrive)
Driver performance metrics
*/
SELECT
    `Payment Method`,
    COUNT(*) AS total_bookings
FROM uberrides
GROUP BY `Payment Method`
ORDER BY total_bookings DESC;
#listed only payment methods with no null values
SELECT
    `Payment Method`,
    COUNT(*) AS total_bookings
FROM uberrides
WHERE `Payment Method` IS NOT NULL
GROUP BY `Payment Method`
ORDER BY total_bookings DESC;

#average customer rating
SELECT
    ROUND(AVG(CAST(`Customer Rating` AS DECIMAL(3,2))), 2) AS average_customer_rating
FROM uberrides
WHERE `Customer Rating` IS NOT NULL;

#Average Customer Rating by Vehicle Type
SELECT
    `Vehicle Type`,
    ROUND(AVG(CAST(`Customer Rating` AS DECIMAL(3,2))), 2) AS average_rating
FROM uberrides
WHERE `Customer Rating` IS NOT NULL
GROUP BY `Vehicle Type`
ORDER BY average_rating DESC;
#Total Customers by Vehicle Type
SELECT
    `Vehicle Type`,
    COUNT(DISTINCT `Customer ID`) AS unique_customers
FROM uberrides
GROUP BY `Vehicle Type`
ORDER BY unique_customers DESC;
#Payment Method by Booking Status
SELECT
    `Payment Method`,
    `Booking Status`,
    COUNT(*) AS total_bookings
FROM uberrides
GROUP BY `Payment Method`, `Booking Status`
ORDER BY `Payment Method`, total_bookings DESC;