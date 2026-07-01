/*
Tasks Performed:

Overall driver performance
Best-performing vehicle categories
Major causes of driver cancellations
Average pickup and customer waiting times
Operational efficiency across vehicle types
*/
#Average Driver Rating
SELECT
    ROUND(AVG(CAST(`Driver Ratings` AS DECIMAL(3,2))), 2) AS average_driver_rating
FROM uberrides
WHERE `Driver Ratings` IS NOT NULL;
#Average Driver Rating by Vehicle Type
SELECT
    `Vehicle Type`,
    ROUND(AVG(CAST(`Driver Ratings` AS DECIMAL(3,2))), 2) AS avg_driver_rating
FROM uberrides
WHERE `Driver Ratings` IS NOT NULL
GROUP BY `Vehicle Type`
ORDER BY avg_driver_rating DESC;
#Driver Cancellation Reasons
SELECT
    `Driver Cancellation Reason`,
    COUNT(*) AS total
FROM uberrides
WHERE `Driver Cancellation Reason` IS NOT NULL
GROUP BY `Driver Cancellation Reason`
ORDER BY total DESC;
# Average VTAT by Vehicle Type
SELECT
    `Vehicle Type`,
    ROUND(AVG(CAST(`Avg VTAT` AS DECIMAL(5,2))), 2) AS average_vtat
FROM uberrides
WHERE `Avg VTAT` IS NOT NULL
GROUP BY `Vehicle Type`
ORDER BY average_vtat;
#Average CTAT by Vehicle Type
SELECT
    `Vehicle Type`,
    ROUND(AVG(CAST(`Avg CTAT` AS DECIMAL(5,2))), 2) AS average_ctat
FROM uberrides
WHERE `Avg CTAT` IS NOT NULL
GROUP BY `Vehicle Type`
ORDER BY average_ctat;
#Driver Cancellation Rate by Vehicle Type
SELECT
    `Vehicle Type`,
    COUNT(*) AS driver_cancellations
FROM uberrides
WHERE `Cancelled Rides by Driver` IS NOT NULL
GROUP BY `Vehicle Type`
ORDER BY driver_cancellations DESC;