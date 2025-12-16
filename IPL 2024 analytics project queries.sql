-- Total runs scored by all teams in this season.
SELECT 
    Team AS Batting_Team,
    SUM(Runs_Scored) AS Total_Runs
FROM BATTING
GROUP BY Team
ORDER BY Total_Runs DESC;

--Orange cap contenders for this season
SELECT TOP 20
    Player_Name,
    SUM(Runs_Scored) AS Total_Runs
FROM BATTING
GROUP BY Player_Name
ORDER BY Total_Runs DESC;

--Purple cap contenders for this season

SELECT TOP 20
    Player_name,
    SUM(WICKETS) AS Total_Wickets
FROM BOWLING
GROUP BY Player_Name
ORDER BY Total_Wickets DESC;

-- Average economy rate of all teams in this season

SELECT
    Team AS Bowling_Team,
    FORMAT(ROUND(AVG(Economy_Rate), 1), 'N1') AS Avg_Economy
FROM BOWLING
GROUP BY Team
ORDER BY CAST(ROUND(AVG(Economy_Rate), 1) AS DECIMAL(4,1));

-- Total no.of sixes by each team in this season

SELECT 
    Team AS Batting_Team,
    SUM(Sixes) AS Total_Sixes
FROM BATTING
GROUP BY Team
ORDER BY Total_Sixes DESC;

-- Boundary percentage of all teams in this season
SELECT
    Team AS Batting_Team,
    FORMAT(ROUND((SUM((Fours * 4) + (Sixes * 6)) * 100.0 /
          SUM(Runs_Scored)), 1), 'N1') AS Boundary_Percentage
FROM BATTING
GROUP BY Team
ORDER BY CAST(ROUND((SUM((Fours * 4) + (Sixes * 6)) * 100.0 /
          SUM(Runs_Scored)), 1) as decimal(4,1));








