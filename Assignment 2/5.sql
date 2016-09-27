\c db2016;
SET search_path TO assignment2,public;

/*Find all countries where English is the dominant 
language, and the poverty rate is higher than that of the USA*/
SELECT country_lang.code, country_lang.name
FROM ("Country" c JOIN "Language" l ON (c.code = l.country) JOIN "Economy" e ON (c.code = e.country)) as country_lang 
WHERE country_lang.language = 'English' AND country_lang.percentage > 50 AND 
      country_lang.poverty > (SELECT e.poverty FROM "Economy" e WHERE e.country = 'USA')