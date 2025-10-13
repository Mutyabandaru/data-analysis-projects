--QUESTION 1:
SELECT 
Base_Name,
RIGHT(Base_Name, 3) AS last_three_chars
FROM other_FHV_services_jan_aug_2015;

--QUESTION 2:
SELECT
Base_Name,
CHARINDEX(' ', number_of_trips) AS space_location_in_trips,
CHARINDEX(' ', Number_of_Vehicles) AS space_location_in_pickups
FROM other_FHV_services_jan_aug_2015;


--QUESTION 3:
SELECT 
    DATENAME(MONTH, TRY_CONVERT(date, Pick_up_Date)) AS Month_Name
FROM other_FHV_services_jan_aug_2015
WHERE TRY_CONVERT(date, Pick_up_Date) IS NOT NULL
ORDER BY MONTH(TRY_CONVERT(date, Pick_up_Date)) DESC;


--QUESTION 4:
SELECT 
    DAY(Pick_up_Date) AS Day_Number,
    DATENAME(MONTH, Pick_up_Date) AS Month_Name
FROM other_FHV_services_jan_aug_2015
ORDER BY Day_Number ASC;

--QUESTION 5:
SELECT TOP 1 *
FROM lyft
ORDER BY start_lng DESC;

--QUESTION 6:
SELECT TOP 1 *
FROM lyft
ORDER BY start_lat DESC;

--QUESTION 7:
SELECT 
    CONCAT(Base_Number, ': ', Base_Name) AS Base_Info
FROM other_FHV_services_jan_aug_2015;

