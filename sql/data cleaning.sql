/*
Project : Uber Ride Analytics

Objective:
Clean the Uber ride booking dataset before analysis.

Tasks Performed:
• Checked missing values
• Identified duplicate Booking IDs
• Replaced NULL values where appropriate
• Removed invalid Booking IDs
• Investigated Payment Method NULL values
*/

#Explored the dataset
SELECT * FROM uberrides LIMIT 10;
DESCRIBE uberrides;

#Check for NULL values
SELECT COUNT(*) FROM uberrides WHERE `Booking Status` IS NULL;

SELECT COUNT(*) FROM uberrides WHERE `Customer Rating` IS NULL;

SELECT COUNT(*) FROM uberrides WHERE `Vehicle Type` IS NULL;

SELECT COUNT(*) FROM uberrides WHERE `Booking Value` IS NULL;

SELECT COUNT(*) FROM uberrides WHERE `Ride Distance` IS NULL;
#Check duplicates
SELECT `Booking ID`, COUNT(*)
FROM uberrides
GROUP BY `Booking ID`
HAVING COUNT(*) > 1;
#Handle NULL values

SET SQL_SAFE_UPDATES = 0;

UPDATE uberrides
SET `Booking Value` = 0
WHERE `Booking Value` IS NULL;

UPDATE uberrides
SET `Ride Distance` = 0
WHERE `Ride Distance` IS NULL;

UPDATE uberrides
SET `Customer Rating` = 0
WHERE `Customer Rating` IS NULL;
#Validate Booking ID
SELECT *
FROM uberrides
WHERE `Booking ID` IS NULL
OR TRIM(`Booking ID`)='';
#Remove invalid rows
DELETE
FROM uberrides
WHERE `Booking ID` IS NULL
OR TRIM(`Booking ID`)='';
#Payment Method investigation
SELECT
`Booking Status`,
COUNT(*),
SUM(CASE WHEN `Payment Method` IS NULL THEN 1 ELSE 0 END)as nullsum
FROM uberrides
GROUP BY `Booking Status`;

SELECT COUNT(*)
FROM uberrides
WHERE `Booking Status`='Completed'
AND `Payment Method` IS NULL;