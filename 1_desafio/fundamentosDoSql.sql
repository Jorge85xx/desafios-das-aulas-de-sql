-- Quais são os nomes e país das cidades com mais de 400 anos desde sua independencia 
SELECT 
    city.Name AS cityName, 
    country.Name AS countryName
FROM city
JOIN country ON city.CountryCode = country.Code
WHERE YEAR(CURDATE()) - country.IndepYear > 400;
    
-- Quais são os nomes, pais, capital e densidade demograficas das cidades com mais de 1000000 de habitantes
SELECT 
	city.Name AS cityName,
  country.Name AS countryName,
  city.Population AS cityPopulation,
  country.Capital AS capitalCity,
  (city.Population / country.SurfaceArea) AS populationDensity
FROM city
JOIN country ON city.countryCode = country.Code
WHERE city.population > 1000000;
    
-- Quais são os nomes e paises das 10 cidades com maior expectativa de vida?
SELECT 
	city.Name AS cityName,
  country.Name AS countryName
FROM city
JOIN country ON city.countryCode = country.Code
ORDER BY country.LifeExpectancy DESC
LIMIT 10;

-- Qual é o nome, capital e população médica dos 10 paises mais populosos?
SELECT 
    country.Name AS CountryName,
    country.Population AS CapitalName,
    capital_city.name AS CountryPopulation
FROM country
JOIN city AS capital_city ON country.Capital = capital_city.ID
ORDER BY country.Population DESC
LIMIT 10;

    
	
	
	