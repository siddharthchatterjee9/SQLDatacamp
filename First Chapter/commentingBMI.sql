--Returns the Body Mass Index (BMI) 
--for all North American players 
--from the 2017-2018 NBA season

SELECT PlayerName, Country,
    ROUND(Weight_kg/SQUARE(Height_cm/100),2) BMI 
FROM Players 
WHERE Country = 'USA'
    OR Country = 'Canada';
--ORDER BY BMI; not required now