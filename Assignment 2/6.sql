\c db2016;
SET search_path TO assignment2,public;

/*Find the country with the fastest declining population
 (a decline is a positive value in the difference death_rate - birth_rate). */
SELECT c.code, c.name
FROM "Country" c JOIN "Population" p ON (c.code = p.country)
WHERE(p.death_rate - p.birth_rate) > 0
ORDER BY (p.death_rate - p.birth_rate) DESC
LIMIT 1