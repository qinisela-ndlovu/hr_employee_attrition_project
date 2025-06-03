-- Select only relevant columns to avoid noise
-- create a view
/*
CREATE VIEW Attrition_summary_by_group AS
SELECT 
    Department,
    JobRole,
    Gender,
    EducationField,
    MaritalStatus,
    OverTime,
    ROUND(AVG(MonthlyIncome), 2) AS AvgMonthlyIncome,
    ROUND(AVG(Age), 1) AS AvgAge,
    COUNT(*) AS TotalEmployees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS Attritions,
    ROUND(100.0 * SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS AttritionRate
FROM hr_data_attrition
GROUP BY Department, JobRole, Gender, EducationField, MaritalStatus, OverTime;  */

-- test the view created
SELECT * From attrition_summary_by_group
Limit 10; 

-- uncomment above to test