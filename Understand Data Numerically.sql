-- understanding data numerically

# What is the Attrition Rate?
SELECT 
  Attrition, 
  COUNT(*) AS Total,
  ROUND(100.0 * COUNT(*) / (SELECT COUNT(*) FROM hr_data_attrition), 2) AS Percentage
FROM hr_data_attrition
GROUP BY Attrition;

-- Find Attrition by Department 
SELECT Department, 
       SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attritions,
       COUNT(*) AS Total,
       ROUND(100.0 * SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS Attrition_Rate
FROM hr_data_attrition
GROUP BY Department;

-- Find the Average Age by Job Role 
SELECT JobLevel, AVG(Age) AS Avag_Age
FROM hr_data_attrition
GROUP BY JobLevel;


