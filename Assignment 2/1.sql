\c db2016;
SET search_path TO assignment2,public;

/*Find the percentage of elderly population (65 and over) in the country with the highest GDP*/
SELECT 100 - p.children - p.adult as "% elderly population"
FROM "Population" p JOIN "Economy" e ON p.country = e.country
WHERE e."GDP" IN (SELECT MAX(e2."GDP") FROM "Economy" e2)