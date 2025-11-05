-- SQL LIVE CLASS

-- 1. Retrieve a combined dataset of employees by joining the three tables
SELECT * 
FROM Table1 T1
JOIN Table2 T2 ON T1.emp_no = T2.emp_no
JOIN Table3 T3 ON T2.emp_no = T3.emp_no;

-- 2. Identify the top 5 highest-paid employees. 
SELECT emp_no, Monthly_Income 
FROM Table2
ORDER BY Monthly_Income desc 
LIMIT 5;

-- 3. Find the average monthly income per department.
SELECT Department, AVG (Monthly_Income) AS Avg_Income
FROM Table1 T1 
JOIN Table2 T2 ON T1.emp_no = T2.emp_no
GROUP BY Department;

-- 4. Determine the correlation between job satisfaction and attrition. 
SELECT Job_Satisfaction, Attrition, COUNT (*) AS Employee_Count
FROM Table1 T1 
JOIN Table2 T2 ON T1.emp_no = T2.emp_no
GROUP BY Job_Satisfaction, Attrition;

-- 5. List employees who have worked at multiple companies
SELECT emp_no, Num_Companies_Worked
FROM Table3 
WHERE Num_Companies_Worked > 1;


-- 6. Find the department with the highest attrition rate.
SELECT Department, Count (*) AS Attrition_Count
FROM Table1
WHERE Attrition = 'Yes'
GROUP BY Department
ORDER BY Attrition_Count DESC
LIMIT 1;

--  7. Analyze the impact of training on employee performance.
SELECT training_times_last_year, AVG (performance_rating) AS Avg_Performance 
FROM Table2 T2
JOIN Table3 T3 ON T2.emp_no = T3.emp_no
GROUP BY training_times_last_year
ORDER BY Avg_Performance DESC;


SELECT monthly_income, AVG (performance_rating) AS Avg_Performance
FROM Table2 T2
JOIN Table3 T3 ON T2.emp_no = T3.emp_no
GROUP BY monthly_income
ORDER BY Avg_Performance DESC;

-- 8. Identify employees who received a salary hike but still left the company.
SELECT T1.emp_no, Attrition, Percent_Salary_Hike
FROM Table1 T1
JOIN Table3 T3 ON T1.emp_no = T3.emp_no
WHERE Attrition = 'Yes'
ORDER BY percent_salary_hike desc 
LIMIT 5;


--  9. Determine the average work-life balance score of employees by job role.
SELECT job_role, AVG (work_life_balance) AS Avg_work_life_balance
FROM Table1 T1
JOIN Table3 T3 ON T1.emp_no = T3.emp_no
GROUP BY job_role
ORDER BY Avg_work_life_balance DESC;

-- 10. Calculate the percentage of employees who work overtime in each department.
SELECT department, COUNT(CASE WHEN hourly_rate > standard_hours THEN 1 END) * 100.0 / COUNT(*) AS overtime_percentage
FROM Table1 T1
JOIN Table2 T2 ON T1.emp_no = T2.emp_no
JOIN Table3 T3 ON T2.emp_no = T3.emp_no
GROUP BY department
ORDER BY overtime_percentage DESC;
 














