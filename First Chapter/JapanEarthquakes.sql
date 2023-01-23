-- Your query
SELECT Date, 
    Place, 
    NearestPop, 
    Magnitude
FROM Earthquakes
WHERE Country = 'JP' 
	AND Magnitude >= 8
ORDER BY Magnitude DESC;