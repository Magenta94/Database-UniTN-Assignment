\c db2016;
SET search_path TO assignment2,public;

/*Consider the following hypothesis: the top 10 countries in terms of the 
percentage of their elderly population are among the richest 20% 
(in terms of the GDP per capita). Write an SQL query that checks if the 
hypothesis is true (if it is true, the output must contain those 10 countries).*/
(SELECT c.code, c.name
FROM "Country" c JOIN "Population" p ON c.code = p.country
ORDER BY (100 - p.children - p.adult) DESC
LIMIT 10)
INTERSECT 
(SELECT a.code, a.name
FROM ("Country" c JOIN "Economy" e ON c.code = e.country) AS a
ORDER BY "GDP" desc
LIMIT (select (COUNT(*)*20/100) FROM ("Country" c JOIN "Economy" e ON c.code = e.country)))