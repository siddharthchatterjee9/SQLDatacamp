-- Query 1
SELECT *
FROM Cities
WHERE CountryCode = 'RU' -- Country code
		OR CountryCode = 'CN' -- Country code
----------------------------------------------
-- Query 2
SELECT *
FROM Cities
WHERE CountryCode IN ('JM','NZ') -- Country codes