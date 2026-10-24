-- Replace flight_data_2003 with your actual Hive table name.
-- Positive delays only; sums in hours.
SELECT origin, SUM(GREATEST(COALESCE(arrdelay,0),0) + GREATEST(COALESCE(depdelay,0),0))/60.0 AS delay_hours
FROM flight_data_2003 GROUP BY origin ORDER BY delay_hours DESC LIMIT 3;

SELECT uniquecarrier, SUM(GREATEST(COALESCE(arrdelay,0),0) + GREATEST(COALESCE(depdelay,0),0))/60.0 AS delay_hours
FROM flight_data_2003 GROUP BY uniquecarrier ORDER BY delay_hours DESC LIMIT 3;

SELECT SUM(GREATEST(COALESCE(arrdelay,0),0))/60.0 AS arrival_delay_hours,
       SUM(GREATEST(COALESCE(depdelay,0),0))/60.0 AS departure_delay_hours
FROM flight_data_2003;
