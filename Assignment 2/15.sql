\c db2016;
SET search_path TO assignment2,public;

/* Find the code of the 15th largest country in the world (in terms of land 
mass area). (If more than one country have the same area, then they are 
considered each one individually. For example, if Canada is the largest 
country and has a land mass of 1000 square Km, and India has also 1000 sq
meters, and USA has 900, then USA is considered the 3rd largest country)*/

SELECT c.code, c.name
FROM "Country" c
WHERE 15 = (SELECT COUNT(c2.area)
            FROM "Country" c2
            WHERE c2.area >= c.area)