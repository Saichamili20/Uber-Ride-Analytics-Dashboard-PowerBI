#Categorize Booking Value
SELECT
    `Booking ID`,
    CAST(`Booking Value` AS DECIMAL(10,2)) AS booking_value,
    CASE
        WHEN CAST(`Booking Value` AS DECIMAL(10,2)) >= 1000 THEN 'High Value'
        WHEN CAST(`Booking Value` AS DECIMAL(10,2)) >= 500 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS booking_category
FROM uberrides;
#Count Bookings by Category
SELECT
    CASE
        WHEN CAST(`Booking Value` AS DECIMAL(10,2)) >= 1000 THEN 'High Value'
        WHEN CAST(`Booking Value` AS DECIMAL(10,2)) >= 500 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS booking_category,
    COUNT(*) AS total_bookings
FROM uberrides
GROUP BY booking_category;
#Vehicle types earning more than ₹1,000,000
SELECT
    `Vehicle Type`,
    SUM(CAST(`Booking Value` AS DECIMAL(10,2))) AS total_revenue
FROM uberrides
GROUP BY `Vehicle Type`
HAVING total_revenue > 1000000
ORDER BY total_revenue DESC;
#Rank Vehicle Types by Revenue
SELECT
    `Vehicle Type`,
    SUM(CAST(`Booking Value` AS DECIMAL(10,2))) AS total_revenue,
    RANK() OVER (
        ORDER BY SUM(CAST(`Booking Value` AS DECIMAL(10,2))) DESC
    ) AS revenue_rank
FROM uberrides
GROUP BY `Vehicle Type`;
#Dense Rank
SELECT
    `Vehicle Type`,
    SUM(CAST(`Booking Value` AS DECIMAL(10,2))) AS total_revenue,
    DENSE_RANK() OVER (
        ORDER BY SUM(CAST(`Booking Value` AS DECIMAL(10,2))) DESC
    ) AS denserank
FROM uberrides
GROUP BY `Vehicle Type`;
#Row Number
SELECT
    `Booking ID`,
    `Customer ID`,
    ROW_NUMBER() OVER (
        ORDER BY CAST(`Booking Value` AS DECIMAL(10,2)) DESC
    ) AS rownumber
FROM uberrides;
#Common Table Expressions (CTEs)
WITH revenue_summary AS (
    SELECT
        `Vehicle Type`,
        SUM(CAST(`Booking Value` AS DECIMAL(10,2))) AS total_revenue
    FROM uberrides
    GROUP BY `Vehicle Type`
)
SELECT *
FROM revenue_summary
ORDER BY total_revenue DESC;
#Subqueries
SELECT
    `Booking ID`,
    CAST(`Booking Value` AS DECIMAL(10,2)) AS booking_value
FROM uberrides
WHERE CAST(`Booking Value` AS DECIMAL(10,2)) >
(
    SELECT AVG(CAST(`Booking Value` AS DECIMAL(10,2)))
    FROM uberrides
);
# Top N Analysis:Top 5 highest-value bookings.
SELECT
    `Booking ID`,
    `Vehicle Type`,
    CAST(`Booking Value` AS DECIMAL(10,2)) AS booking_value
FROM uberrides
ORDER BY booking_value DESC
LIMIT 5;