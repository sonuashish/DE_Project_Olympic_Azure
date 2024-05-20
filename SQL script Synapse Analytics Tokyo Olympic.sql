--Count the totla number of athletes from eacch country.
SELECT Country, COUNT(*) AS TotalAthletes 
FROM athletes 
GROUP BY Country 
ORDER BY TotalAthletes DESC;

--Calculate the total medals won by each country.
SELECT 
Team_Country,
SUM(Gold) Total_Gold,
SUM(Silver) Total_Silver,
SUM(Bronze) Total_Bronze
FROM medals
Group BY Team_Country
ORDER BY Total_Gold DESC;

-- Calculate the average number of entries by gender for each discipline
SELECT Discipline,
AVG(Female) Avg_Female,
AVG(Male) Avg_Male
FROM entriesgender
GROUP BY Discipline;
