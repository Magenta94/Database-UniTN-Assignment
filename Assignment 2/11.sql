\c db2016;
SET search_path TO assignment2,public;

/*List all the countries that belong to the top 10 in terms of both of the following
criteria: the percentage of people in poverty, and GDP per capita.  */
(SELECT c.code, c.name
FROM "Country" c JOIN "Economy" e ON c.code = e.country
ORDER BY e.poverty DESC
LIMIT 10)
INTERSECT
(SELECT c.code, c.name
FROM "Country" c JOIN "Economy" e ON c.code = e.country
ORDER BY e."GDP" DESC
limit 10)