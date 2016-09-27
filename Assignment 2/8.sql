\c db2016;
SET search_path TO assignment2,public;

/*For each language, find the percentage of the world population that speaks it,
but considering only countries whose population is declining.*/
SELECT l.language, ((SUM((p.population/100)*l.percentage) * 100) / (SELECT SUM(p.population) FROM "Population" p)) as "% of the World"
FROM "Language" l JOIN "Population" p ON p.country = l.country
WHERE p.death_rate > p.birth_rate
GROUP BY l.language