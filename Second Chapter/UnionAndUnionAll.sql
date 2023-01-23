SELECT CityName AS NearCityName, -- City name column
	   CountryCode
FROM Cities

UNION -- Append queries (removes duplicates)

SELECT Capital AS NearCityName, -- Nation capital column
       Code2 AS CountryCode
FROM Nations;

-- 100 rows were returned in this query

----------------------------------------------------------
SELECT CityName AS NearCityName,
	   CountryCode
FROM Cities

UNION ALL -- Append queries (retains duplicates)

SELECT Capital AS NearCityName,
       Code2 AS CountryCode  -- Country code column
FROM Nations;

-- again 100 rows were returned in this query
-- which shows there were 0 (no) duplicates in the query output

----------------------------------------------------------

-- UNION ALL returns more rows than UNION because it does not remove duplicates. 
-- Therefore, duplicate rows were removed with UNION.