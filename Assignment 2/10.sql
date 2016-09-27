\c db2016;
SET search_path TO assignment2,public;

/*Consider the following hypothesis: 80% of the world population lives in 
countries that are among the poorest 20%. Write an SQL query that checks if the 
hypothesis is true (if it is true, the output must be the word ‘yes’. If not true,
the output should be the word ‘no’). */

SELECT CASE WHEN (SUM(p.population)*80/100) = (SELECT SUM(p.population)
					       FROM "Population" p
					       WHERE p.country IN (SELECT country.code
					                           FROM ("Country" c JOIN "Economy" e ON c.code = e.country) AS country
								   ORDER BY "GDP" asc
								   LIMIT (select (COUNT(*)*20/100) FROM ("Country" c JOIN "Economy" e ON c.code = e.country)))) 
	     THEN 'yes'
	     ELSE 'no'
	END
FROM "Population" p