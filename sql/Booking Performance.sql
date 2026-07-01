/*
Tasks Performed:

Total bookings	
Status distribution
Success rate	
Cancellation rate
*/
#total bookings
select count(*) as total_rows from uberrides;
 #booking status count 
select `Booking Status`,count(*) as total from uberrides group by `Booking Status` order by `Booking Status`;

#success rate
SELECT 
    ROUND(
        SUM(CASE WHEN `Booking Status` = 'Completed' THEN 1 ELSE 0 END) * 100.0 
        / COUNT(*), 
    2) AS success_rate_percentage
FROM uberrides;

#cancellation rate
SELECT 
    ROUND(
        SUM(CASE WHEN `Booking Status` LIKE '%Cancel%' THEN 1 ELSE 0 END) * 100.0 
        / COUNT(*), 
    2) AS cancellation_rate_percentage
FROM uberrides
