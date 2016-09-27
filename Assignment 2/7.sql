\c db2016;
SET search_path TO assignment2,public;

/*For each language, find the percentage of the world population that speaks it.*/

SELECT l.language, ((SUM((p.population/100)*l.percentage) * 100) / (SELECT SUM(p.population) FROM "Population" p)) as "% of the World"
FROM "Language" l JOIN "Population" p ON p.country = l.country
GROUP BY l.language