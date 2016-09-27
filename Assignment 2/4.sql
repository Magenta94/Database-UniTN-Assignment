\c db2016;
SET search_path TO assignment2,public;

/*Find the poverty rate in the country/countries
 with the largest number of languages spoken*/
SELECT e.poverty
FROM "Economy" e JOIN (SELECT l.country
		       		   FROM "Language" l
                       GROUP BY l.country
                       ORDER BY COUNT(l.language) desc
                       LIMIT 1) as max_country 
                 ON e.country = max_country.country