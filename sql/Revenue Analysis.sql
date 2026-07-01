/*
Task Performed:
* Total revenue	
* Avg booking value	
* Revenue by vehicle	
* Trips by vehicle	
* Avg revenue per trip
*/

#total revenue
SELECT 
    SUM(CAST(`Booking Value` AS DECIMAL(10,2))) AS total_revenue
FROM uberrides;

#without cast(CAST IS ACTUALLY USED TO DEAL WITH TEXT TYPE OF DATA .CONVERTS TEXT TO NUMERICAL)
select sum(`Booking Value`) from uberrides;

#average revenue
SELECT 
    ROUND(AVG(CAST(`Booking Value` AS DECIMAL(10,2))), 2) AS avg_booking_value
FROM uberrides;

#revenue by vehicle
SELECT 
    `Vehicle Type`,
    SUM(CAST(`Booking Value` AS DECIMAL(10,2))) AS total_revenue
FROM uberrides
GROUP BY `Vehicle Type`
ORDER BY total_revenue DESC;
  
#trips per vehicle
SELECT 
    `Vehicle Type`,
    COUNT(*) AS total_trips
FROM uberrides
GROUP BY `Vehicle Type`
ORDER BY total_trips DESC;

#avg_revenue_per_trip
SELECT 
    `Vehicle Type`,
    ROUND(AVG(CAST(`Booking Value` AS DECIMAL(10,2))), 2) AS avg_revenue_per_trip
FROM uberrides
GROUP BY `Vehicle Type`
ORDER BY avg_revenue_per_trip DESC;