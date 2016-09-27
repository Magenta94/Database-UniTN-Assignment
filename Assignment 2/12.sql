\c db2016;
SET search_path TO assignment2,public;

/*Assume that all the countries stop military spending, 
and distribute the money back to their citizens. Find the average, maximum, 
and minimum increase of "GDP" per capita due to this action. For the minimum and 
maximum, also list the country (countries)*/

SELECT *
FROM
(SELECT c.code, c.name, (e."GDP"*e.military/100) as "Increment", 
	CASE WHEN (e."GDP"*e.military/100) = (SELECT MAX(e2."GDP"*e2.military/100) FROM "Economy" e2) THEN 'Maximun Increment'
	     WHEN (e."GDP"*e.military/100) = (SELECT MIN(e2."GDP"*e2.military/100) FROM "Economy" e2) THEN 'Minimun Increment'
	END
FROM ("Country" c JOIN "Economy" e ON c.code = e.country)
WHERE (e."GDP"*e.military/100) = (SELECT MAX(e."GDP"*e.military/100) FROM "Economy" e) OR 
      (e."GDP"*e.military/100) = (SELECT MIN(e."GDP"*e.military/100) FROM "Economy" e)) AS min_max,
(SELECT CAST ((AVG(e."GDP"*e.military/100)) AS integer) as "Average Increment" FROM  "Economy" e) as avg
      