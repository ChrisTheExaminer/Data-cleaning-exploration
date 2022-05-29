/* Data Cleaning & Data exploration using Hotel Revenue dataset
*/

--Select everything from Table [2018]

SELECT * FROM dbo.[2018];

--Count distinct hotels

SELECT COUNT(DISTINCT hotel) AS Distinct_Hotel FROM dbo.[2018];

--Name of distinct hotels

SELECT DISTINCT hotel FROM dbo.[2018];

--Distinct meals

SELECT DISTINCT meal from dbo.[2018];

--UPDATE COLUMN MEAL// Table 2018
UPDATE dbo.[2018]
SET meal =
	CASE
	WHEN meal = 'BB' THEN 'Bead and Breakfast'
	WHEN meal = 'HB' THEN 'Half Board'
	WHEN meal = 'FB' THEN 'Full board'
	WHEN meal = 'SC' THEN 'Self-catering'
	ELSE 'Undefined'
	END
WHERE meal IN ('BB', 'HB', 'FB', 'SC', 'Undefined');

--UPDATE COLUMN MEAL// Table 2019

UPDATE dbo.[2019]
SET meal =
	CASE
	WHEN meal = 'BB' THEN 'Bead and Breakfast'
	WHEN meal = 'HB' THEN 'Half Board'
	WHEN meal = 'FB' THEN 'Full board'
	WHEN meal = 'SC' THEN 'Self-catering'
	ELSE 'Undefined'
	END
WHERE meal IN ('BB', 'HB', 'FB', 'SC', 'Undefined');

--UPDATE COLUMN MEAL// Table 2020

UPDATE dbo.[2020]
SET meal =
	CASE
	WHEN meal = 'BB' THEN 'Bead and Breakfast'
	WHEN meal = 'HB' THEN 'Half Board'
	WHEN meal = 'FB' THEN 'Full board'
	WHEN meal = 'SC' THEN 'Self-catering'
	ELSE 'Undefined'
	END
WHERE meal IN ('BB', 'HB', 'FB', 'SC', 'Undefined');

--Change date format for table 2018
UPDATE dbo.[2018]
SET reservation_status_date = cast(reservation_status_date as date);

--Another method for changing the date format. We will have our initial column and our transformed column in this case.
ALTER TABLE dbo.[2018]
ADD reservation_status_date_converted DATE;

UPDATE dbo.[2018]
SET reservation_status_date_converted = cast(reservation_status_date as date);

ALTER TABLE dbo.[2018]
DROP COLUMN reservation_status_date;

--Change date format for table 2019

ALTER TABLE dbo.[2019]
ADD reservation_status_date_converted DATE;

UPDATE dbo.[2019]
SET reservation_status_date_converted = cast(reservation_status_date as date);

ALTER TABLE dbo.[2019]
DROP COLUMN reservation_status_date;

--Change date format for table 2020

ALTER TABLE dbo.[2020]
ADD reservation_status_date_converted DATE;

UPDATE dbo.[2020]
SET reservation_status_date_converted = cast(reservation_status_date as date);

ALTER TABLE dbo.[2020]
DROP COLUMN reservation_status_date;

--Distinct Countries

SELECT DISTINCT country from dbo.[2018] --dbo.[2019] dbo.[2020];
 
 --Update column country in the three tables

UPDATE dbo.[2018] --dbo.[2019] dbo.[2020]
SET country = 
	CASE
	WHEN country = 'PRT' THEN 'Portugal'
	WHEN country = 'ISR' THEN 'Israel'
	WHEN country = 'CHN' THEN 'China'
	WHEN country = 'COL' THEN 'Colombia'
	WHEN country = 'JPN' THEN 'Japon'
	WHEN country = 'IRQ' THEN 'Iraq'
	WHEN country = 'NZL' THEN 'New Zealand'
	WHEN country = 'USA' THEN 'United State'
	WHEN country = 'ARG' THEN 'Argentina'
	WHEN country = 'KNA' THEN 'Saint Kitts and Nevis'
	WHEN country = 'AUS' THEN 'Australia'
	WHEN country = 'MEX' THEN 'Mexico'
	WHEN country = 'SVN' THEN 'Slovenia'
	WHEN country = 'GIB' THEN 'Gibraltar'
	WHEN country = 'HRV' THEN 'Croatia'
	WHEN country = 'DEU' THEN 'Germany'
	WHEN country = 'VEN' THEN 'Venezuela'
	WHEN country = 'NLD' THEN 'Netherlands'
	WHEN country = 'SVK' THEN 'Slovakia'
	WHEN country = 'CHE' THEN 'Switzerland'
	WHEN country = 'KAZ' THEN 'Kazakhstan'
	WHEN country = 'PRI' THEN 'Puerto rico'
	WHEN country ='LBN'	THEN 'Lebanon'
	WHEN country ='MYS' THEN 'Malaysia'
	WHEN country ='IND'	THEN 'India'
	WHEN country ='CZE' THEN 'Czechia'
	WHEN country = 'ARM' THEN 'Armenia'
	WHEN country ='ITA'	THEN 'Italy'
	WHEN country = 'KOR' THEN	'Korea (the Republic of)'
	WHEN country ='ZWE'	THEN 'Zimbabwe'
	WHEN country ='SAU' THEN 'Saudi Arabia'
	WHEN country ='CRI' THEN 'Costa Rica'
	WHEN country ='STP' THEN 'Sao Tome and Principe'
	WHEN country ='TUR'	THEN 'Turkey'
	WHEN country = 'ALB' THEN 'Albania'
	WHEN country = 'IRL' THEN 'Ireland'
	WHEN country = 'POL' THEN 'Poland'
	WHEN country = 'NGA' THEN 'Nigeria'
	WHEN country = 'MKD' THEN 'North Macedonia'
	WHEN country = 'AUT' THEN 'Austria'
	WHEN country = 'BEL' THEN 'Belgium'
	WHEN country = 'BRA' THEN 'Brazil'
	WHEN country = 'FIN' THEN 'Finland'
	WHEN country = 'MMR' THEN 'Myanmar (Burma)'
	WHEN country = 'GEO' THEN 'Georgia'
	WHEN country = 'MAR' THEN 'Morocco'
	WHEN country = 'CYM' THEN 'Cayman Islands'
	WHEN country = 'LTU' THEN 'Lithuania'
	WHEN country = 'EGY' THEN 'Egypt'
	WHEN country ='ZAF'	THEN 'South Africa'
	WHEN country ='DNK' THEN 'Denmark'
	WHEN country ='DZA' THEN 'Algeria'
	WHEN country = 'BGR' THEN 'Bulgaria'
	WHEN country = 'SGP' THEN 'Singapore'
	WHEN country = 'RUS' THEN 'Russia'
	WHEN country = 'GRC' THEN 'Greece'
	WHEN country = 'ROU' THEN 'Romania'
	WHEN country = 'OMN' THEN 'Oman'
	WHEN country = 'THA' THEN 'Thailand'
	WHEN country = 'LUX' THEN 'Luxembourg'
	WHEN country = 'JOR' THEN 'Jordan'
	WHEN country = 'LIE' THEN 'Liechtenstein'
	WHEN country = 'TUN' THEN 'Tunisia'
	WHEN country = 'SRB' THEN 'Serbia'
	WHEN country = 'BWA' THEN 'Botswana'
	WHEN country = 'SWE' THEN 'Sweden'
	WHEN country = 'SEN' THEN 'Senegal'
	WHEN country = 'TWN' THEN 'Taiwan'
	WHEN country = 'TMP' THEN 'East Timor'
	WHEN country = 'CMR' THEN 'Cameroon'
	WHEN country = 'BLR' THEN 'Belarus'
	WHEN country = 'EST' THEN 'Estonia'
	WHEN country = 'SMR' THEN 'San Marino'
	WHEN country = 'KWT' THEN 'Kuwait'
	WHEN country = 'FRA' THEN 'France'
	WHEN country = 'DOM' THEN 'Dominican Republic'
	WHEN country = 'PAN' THEN 'Panama'
	WHEN country = 'IRN' THEN 'Iran'
	WHEN country = 'IND' THEN 'India'
	WHEN country = 'PHL' THEN 'Philippines'
	WHEN country = 'MOZ' THEN 'Mozambique'
	WHEN country = 'ESP' THEN 'Spain'
	WHEN country = 'LVA' THEN 'Latvia'
	WHEN country = 'GBR' THEN 'United Kingdom'
	WHEN country = 'AZE' THEN 'Azerbaijan'
	WHEN country = 'LKA' THEN 'Sri Lanka'
	WHEN country = 'ECU' THEN 'Ecuador'
	WHEN country = 'PER' THEN 'Peru'
	WHEN country = 'ETH' THEN 'Ethiopia'
	WHEN country = 'AGO' THEN 'Angola'
	WHEN country = 'CPV' THEN 'Cape Verde'
	WHEN country = 'HUN' THEN 'Hungary'
	WHEN country = 'UKR' THEN ' Ukraine'
	WHEN country = 'NOR' THEN 'Norway'
	WHEN country = 'CN' THEN 'China'
	WHEN country = 'MUS' THEN ' Mauritius'
	WHEN country = 'ZMB' THEN 'Zambia'
	WHEN country = 'CHL' THEN 'Chile'
	ELSE country
	END
FROM [2018] --[2019] [2020];
	

-- DISTINCT Deposit_type

SELECT DISTINCT deposit_type FROM [2018] --dbo.[2019] dbo.[2020];

--DISTINCT Market segment

SELECT DISTINCT market_segment FROM [2018] --dbo.[2019] dbo.[2020];

--DISTINCT Distribution channel

SELECT DISTINCT distribution_channel FROM [2018] --dbo.[2019] dbo.[2020];

--DISTINCT Revervation status

SELECT DISTINCT reservation_status FROM [2018] --dbo.[2019] dbo.[2020];

--DISTINCT customer type

SELECT DISTINCT customer_type FROM [2018] --dbo.[2019] dbo.[2020];

--Customers who cancelled their reservation

SELECT hotel, is_canceled, reservation_status, customer_type, COUNT(is_canceled) AS Cancelled_Booking_by_customer_type FROM [2018]
--dbo.[2019] dbo.[2020]
WHERE is_canceled = 1 AND reservation_status = 'canceled'
GROUP BY hotel, is_canceled, reservation_status, customer_type
ORDER BY hotel, is_canceled, reservation_status, customer_type;

--Customers who fail to show up

SELECT hotel, is_canceled, reservation_status, customer_type, COUNT(is_canceled) AS fail_to_show_up FROM [2018]
--dbo.[2019] dbo.[2020]
WHERE is_canceled = 1 AND reservation_status = 'No-Show'
GROUP BY hotel, is_canceled, reservation_status, customer_type
ORDER BY hotel, is_canceled, reservation_status, customer_type;

--Customers who checked in and out

SELECT hotel, is_canceled, reservation_status, customer_type, COUNT(is_canceled) AS checked_in_and_out FROM [2018] 
--dbo.[2019] dbo.[2020]
WHERE is_canceled = 0 AND reservation_status = 'Check-Out'
GROUP BY hotel, is_canceled, reservation_status, customer_type
ORDER BY hotel, is_canceled, reservation_status, customer_type;

--Deposit utilised by customers who checked in and out

SELECT hotel, is_canceled, reservation_status, customer_type, deposit_type, COUNT(is_canceled) AS checked_in_and_out FROM [2018] 
--dbo.[2019] dbo.[2020]
WHERE is_canceled = 0 AND reservation_status = 'Check-Out'
GROUP BY hotel, is_canceled, reservation_status, customer_type, deposit_type
ORDER BY hotel, is_canceled, reservation_status, customer_type;

--Customers who cancelled their reservation used this type of deposit

SELECT hotel, is_canceled, reservation_status, customer_type, deposit_type, COUNT(is_canceled) 
AS Cancelled_Booking_by_customer_type FROM [2018] --dbo.[2019] dbo.[2020]
WHERE is_canceled = 1 AND reservation_status = 'canceled'
GROUP BY hotel, is_canceled, reservation_status, customer_type, deposit_type
ORDER BY hotel, is_canceled, reservation_status, customer_type;

--Type of deposit utilised by customers who fail to show up

SELECT hotel, is_canceled, reservation_status, customer_type, deposit_type, COUNT(is_canceled)
AS fail_to_show_up FROM [2018] --dbo.[2019] dbo.[2020]
WHERE is_canceled = 1 AND reservation_status = 'No-Show'
GROUP BY hotel, is_canceled, reservation_status, customer_type, deposit_type
ORDER BY hotel, is_canceled, reservation_status, customer_type;

--Type of distribution channel used by the two hotels

SELECT DISTINCT hotel, distribution_channel 
from [2018] ORDER BY hotel;

-- Identify the channel that brings in the most bookings

SELECT hotel, distribution_channel, COUNT(distribution_channel) AS Booking_by_Channel FROM [2018]
GROUP BY hotel, distribution_channel
ORDER BY hotel;

-- Identify the channel which has the most cancelled booking

SELECT hotel, distribution_channel, 
COUNT(distribution_channel) AS Booking_by_Channel, is_canceled FROM [2018]
--dbo.[2019] dbo.[2020]
WHERE is_canceled = 0
GROUP BY hotel, distribution_channel, is_canceled
ORDER BY hotel;

-- Channels in which customers did not cancel their reservations

SELECT hotel, distribution_channel, 
COUNT(distribution_channel) AS Booking_by_Channel, is_canceled FROM [2018]
--dbo.[2019] dbo.[2020]
WHERE is_canceled = 1
GROUP BY hotel, distribution_channel, is_canceled
ORDER BY hotel;

-- Months which have the most booking in 2018

SELECT hotel, arrival_date_month, COUNT(is_canceled) AS N_of_Booking FROM [2018]
GROUP BY hotel, arrival_date_month
ORDER BY hotel;

-- Months which have the most booking in 2019

SELECT hotel, arrival_date_month, COUNT(is_canceled) AS N_of_Booking FROM [2019]
GROUP BY hotel, arrival_date_month
ORDER BY hotel;

-- Months which have the most booking in 2020

SELECT hotel, arrival_date_month, COUNT(is_canceled) AS N_of_Booking FROM [2020]
GROUP BY hotel, arrival_date_month
ORDER BY hotel;

-- UPDATE meal_cost table

UPDATE dbo.[meal_cost$]
SET meal =
	CASE
	WHEN meal = 'BB' THEN 'Bead and Breakfast'
	WHEN meal = 'HB' THEN 'Half Board'
	WHEN meal = 'FB' THEN 'Full board'
	WHEN meal = 'SC' THEN 'Self-catering'
	ELSE 'Undefined'
	END
WHERE meal IN ('BB', 'HB', 'FB', 'SC', 'Undefined');

-- The total number of meals by each type of customer

SELECT [2018].hotel, [2018].customer_type, [2018].meal, COUNT([2018].meal) 
AS Total_number_of_meals_by_customers FROM [2018]
GROUP BY [2018].hotel, [2018].customer_type, [2018].meal
ORDER BY hotel, customer_type;

--The total number of meals by customers who checked in and out

SELECT [2018].hotel, [2018].reservation_status ,[2018].customer_type, [2018].meal, 
COUNT([2018].meal) AS meal_by_customer_type 
FROM [2018] WHERE [2018].reservation_status = 'Check-Out'
GROUP BY [2018].hotel, [2018].customer_type, [2018].meal, [2018].reservation_status
ORDER BY hotel, customer_type;


--Total amount spent on meals in 2018 by category for clients who checked in and checked out.

WITH TEMP AS
(SELECT hotel, customer_type, [2018].meal, reservation_status, meal_cost$.Cost
FROM [2018] INNER JOIN meal_cost$ ON [2018].meal = meal_cost$.meal)

SELECT hotel, reservation_status, meal, Cost,
COUNT(meal) AS Total_N_Meal_by_Category, (Cost*COUNT(meal)) AS [total amount spent in 2018]
FROM TEMP 
WHERE reservation_status = 'Check-Out'
GROUP BY hotel, meal,reservation_status, Cost
ORDER BY hotel, Total_N_Meal_by_Category;

--Total amount spent on meals in 2019 by category for clients who checked in and checked out.

WITH TEMP AS
(SELECT hotel, customer_type, [2019].meal, reservation_status, meal_cost$.Cost
FROM [2019] INNER JOIN meal_cost$ ON [2019].meal = meal_cost$.meal)

SELECT hotel, reservation_status, meal, Cost,
COUNT(meal) AS Total_N_Meal_by_Category, (Cost*COUNT(meal)) AS [total amount spent in 2019]
FROM TEMP 
WHERE reservation_status = 'Check-Out'
GROUP BY hotel, meal,reservation_status, Cost
ORDER BY hotel, Total_N_Meal_by_Category;

--Total amount spent on meals in 2020 by category for clients who checked in and checked out.

WITH TEMP AS
(SELECT hotel, customer_type, [2020].meal, reservation_status, meal_cost$.Cost
FROM [2020] INNER JOIN meal_cost$ ON [2020].meal = meal_cost$.meal)

SELECT hotel, reservation_status, meal, Cost,
COUNT(meal) AS Total_N_Meal_by_Category, (Cost*COUNT(meal)) AS [total amount spent in 2020]
FROM TEMP 
WHERE reservation_status = 'Check-Out'
GROUP BY hotel, meal,reservation_status, Cost
ORDER BY hotel, Total_N_Meal_by_Category;

--No-Show Status by Nationalities

SELECT hotel, country, COUNT(reservation_status) AS Status_No_show FROM [2018] WHERE
reservation_status = 'No-Show'
GROUP BY hotel, country ORDER BY hotel, country;

--Cancellation status by country

SELECT hotel, country, COUNT(reservation_status) AS Status_Cancelled FROM [2018] WHERE reservation_status = 'Canceled'
GROUP BY hotel, country ORDER BY hotel, country;

--Checkout Status by Nationalities

SELECT hotel, country, COUNT(reservation_status) AS Status_Checkout FROM [2018] WHERE
reservation_status = 'Check-Out'
GROUP BY hotel, country ORDER BY hotel, country;

--Yearly revenue

WITH Revenue AS 
(SELECT * FROM [2018] UNION  SELECT * FROM [2019] UNION SELECT * FROM [2020])
SELECT hotel, arrival_date_year, ROUND(SUM((stays_in_week_nights+stays_in_weekend_nights)*adr), 2) as revenue 
FROM Revenue
GROUP BY hotel, arrival_date_year
ORDER BY hotel;
  
