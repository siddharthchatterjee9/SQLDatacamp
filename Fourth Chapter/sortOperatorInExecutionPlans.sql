SELECT CityName AS NearCityName,
	   CountryCode
FROM Cities

UNION -- Append queries

SELECT Capital AS NearCityName,
       Code2 AS CountryCode
FROM Nations;