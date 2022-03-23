SELECT countries.name as name, languages.language as language, languages.percentage as percentage  /* change the column names using as*/
FROM countries 
JOIN languages ON countries.id = languages.country_id /* join the language table with the countries table*/
WHERE languages.language = "Slovene" /* get data slovene*/
ORDER BY languages.percentage DESC; /* order by percentage*/

SELECT countries.name as name, COUNT(cities.name) as cities /* change column name using as */
FROM countries
LEFT JOIN cities ON countries.id = cities.country_id /* join all the countries regardless if they have any cities */
GROUP BY countries.name /* group the cities by countries name */
ORDER BY cities DESC; /* ordered by the most cities */

SELECT  name , population, country_id FROM cities 
WHERE cities.population > 500000 
AND cities.country_id = ( SELECT id FROM countries WHERE countries.name = "Mexico" ) /* using country_id to pull Mexico using countries=name */
ORDER BY population DESC;

SELECT countries.name as name, languages.language as language, languages.percentage as percentage 
FROM countries
JOIN languages ON countries.id = languages.country_id -- join -- languages table with countries table
WHERE languages.percentage > 89  -- get percentages >89
ORDER BY languages.percentage DESC;

SELECT name, surface_area, population 
FROM countries
WHERE surface_area < 501 and population > 100000; 

SELECT name, government_form,capital, life_expectancy from countries
WHERE capital > 200
AND government_form ="Constitutional Monarchy"
AND life_expectancy > 75;

SELECT countries.name as country_name, cities.name as city_name, cities.district, cities.population from countries
JOIN cities ON countries.id = cities.country_id
WHERE cities.district = "Buenos Aires"
AND cities.population > 500000
ORDER BY cities.population DESC;

SELECT countries.region, COUNT(countries.name) -- countries we want to count the countries by name
FROM countries 
GROUP BY countries.region 
ORDER BY countries DESC;






