-- Show all tables
SHOW TABLES;

-- Describe a specific table
DESCRIBE hr_data_attrition;

-- Preview data
SELECT * FROM hr_data_attrition LIMIT 20;

-- Double check few columns - for missing values(most import
SELECT 
  SUM(CASE WHEN Age IS NULL THEN 1 ELSE 0 END) AS Missing_Age,
  SUM(CASE WHEN JobRole IS NULL THEN 1 ELSE 0 END) AS Missing_JobRole,
  SUM(CASE WHEN Attrition IS NULL THEN 1 ELSE 0 END) AS Attrition,
  SUM(CASE WHEN DailyRate IS NULL THEN 1 ELSE 0 END) AS DailyRate,
  SUM(CASE WHEN YearsSinceLastPromotion IS NULL THEN 1 ELSE 0 END) AS YearsSinceLastPromotion,
  SUM(CASE WHEN JobSatisfaction IS NULL THEN 1 ELSE 0 END) AS JobSatisfaction
FROM hr_data_attrition;

