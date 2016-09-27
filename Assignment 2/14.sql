\c db2016;
SET search_path TO assignment2,public;

/* Find the richest (highest GDP) country whose name starts with a 'C'*/
SELECT c.code, c.name 
from "Country" c JOIN "Economy" e ON e.country = c.code
where c.name LIKE 'C%'
order by e."GDP" desc
limit 1