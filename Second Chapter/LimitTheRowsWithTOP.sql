SELECT TOP 10 -- Limit the number of rows to ten
      Latitude,
      Longitude,
	  Magnitude,
	  Depth,
	  NearestPop
FROM Earthquakes
WHERE Country = 'PG'
	OR Country = 'ID'
ORDER BY Depth ASC; -- Order results from shallowest to deepest

SELECT TOP 25 PERCENT -- Limit rows to the upper quartile
       Latitude,
       Longitude,
	   Magnitude,
	   Depth,
	   NearestPop
FROM Earthquakes
WHERE Country = 'PG'
	OR Country = 'ID'
ORDER BY Magnitude DESC; -- Order the results