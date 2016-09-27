\c db2016;
SET search_path TO assignment2,public;

/* Order languages by the average percentage of the adult population of 
countries in which they are spoken by at least 25% of the population 
(in the decreasing order)*/
SELECT l.language
FROM "Language" l JOIN "Population" p ON l.country = p.country
WHERE l.percentage >= 25
GROUP BY l.language
ORDER BY AVG(p.adult) DESC