\c db2016;
SET search_path TO assignment2,public;

/*Find the dominant language (dominant means: spoken by more than 50%
 of the population) of the country with the highest male/female ratio.*/
SELECT l.language
FROM "Population" p JOIN "Language" l ON p.country = l.country
WHERE l.percentage > 50 AND p.sex_ratio IN (SELECT MAX(p2.sex_ratio) FROM "Population" p2)