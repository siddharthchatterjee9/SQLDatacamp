SELECT Country, COUNT(*) CountOfPlayers
FROM Players
-- Add the filter condition
WHERE Country
-- Fill in the missing countries
	IN ('Brazil', 'Argentina', 'Dominican Republic','Puerto Rico')
GROUP BY Country;