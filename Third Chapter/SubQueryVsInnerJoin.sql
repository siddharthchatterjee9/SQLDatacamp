----SUB QUERY----
SELECT
	n.CountryName,
	 (SELECT MAX(c.Pop2017) -- Add 2017 population column
	 FROM Cities AS c 
                       -- Outer query country code column
	 WHERE c.CountryCode = n.Code2) AS BiggestCity
FROM Nations AS n; -- Outer query table

----INNER JOIN----
SELECT n.CountryName, 
       c.BiggestCity 
FROM Nations AS n
INNER JOIN -- Join the Nations table and sub-query
    (SELECT CountryCode, 
     MAX(Pop2017) AS BiggestCity 
     FROM Cities
     GROUP BY CountryCode) AS c
ON n.Code2 = c.CountryCode; -- Add the joining columns