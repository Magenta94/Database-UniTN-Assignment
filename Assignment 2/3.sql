\c db2016;
SET search_path TO assignment2,public;

/*List 5 countries with the highest military spending
 (not the percentage, but the actual spending), and for each of them 
 list their capital and area*/
SELECT c.code, c.name, c.capital, c.area 
FROM "Country" c JOIN "Economy" e ON c.code = e.country
order by (("GDP"*military)/100) desc
LIMIT 5