# HR Analytics – SQL Query Project
This project explores employee data from an HR dataset using SQL queries to derive insights on workforce trends, performance, attrition, and compensation.
The goal was to perform a comprehensive analysis of employee behaviour and provide data-backed insights that can inform decisions on employee retention, engagement, and organizational efficiency.
The analysis covers areas such as income distribution, department attrition rates, training impact, and work-life balance patterns — helping HR teams make informed, evidence-based policy and management decisions.

## Objectives

The main objectives of this analysis were to:
* Examine the relationship between employee satisfaction, performance, and attrition.
* Identify departments with the highest attrition rates and possible contributing factors.
* Analyze the impact of training, compensation, and work-life balance on performance.
* Determine income disparities and top earners across departments.
* Provide actionable recommendations to improve employee retention and productivity.

## Tools & Technologies

| Category        | Tools Used                        |
| --------------- | --------------------------------- |
| Query Language  | SQL                               |
| Environment     | SQL IDE        |
| Database Engine | MySQL / PostgreSQL                |
| Analysis Type   | Exploratory & Diagnostic Analysis |

## Dataset Description

The project used three relational tables, joined via the emp_no field:

| Table      | Description                                                                                                                              |
| ---------- | ---------------------------------------------------------------------------------------------------------------------------------------- |
| **Table1** | Contains demographic and HR data – department, job role, gender, and attrition status.                                                   |
| **Table2** | Includes financial and performance data – monthly income, job satisfaction, hourly rate, and performance rating.                         |
| **Table3** | Captures experience and engagement metrics – number of companies worked, training frequency, salary hikes, and work-life balance scores. |

## Analytical Queries Summary

| #  | Query Focus                       | Objective                                   |
| -- | --------------------------------- | ------------------------------------------- |
| 1  | Join of all tables                | Combine employee data for complete analysis |
| 2  | Top 5 highest-paid employees      | Identify income leaders                     |
| 3  | Average income per department     | Evaluate salary distribution                |
| 4  | Job satisfaction vs. attrition    | Assess satisfaction impact on retention     |
| 5  | Employees with multiple companies | Examine job mobility                        |
| 6  | Department with highest attrition | Detect turnover hotspots                    |
| 7  | Training vs. performance          | Measure impact of employee development      |
| 8  | Salary hike but resigned          | Understand non-financial attrition drivers  |
| 9  | Work-life balance by job role     | Assess employee well-being                  |
| 10 | Overtime analysis per department  | Quantify workload intensity                 |

## Key Insights

* Top Earners: The highest-paid employees belong mainly to technical and managerial roles, with income disparities across departments.
* Average Income per Department: Departments like R&D and Sales had the highest average income, indicating skill-based pay structures.
* Attrition Patterns: The Sales and HR departments recorded the highest attrition rates, suggesting role stress or inadequate retention strategies.
* Training & Performance: Moderate training frequency (3–4 times per year) correlated with higher performance ratings, emphasizing continuous learning’s positive effect.
* Work-Life Balance: Job roles with higher work-life balance scores tended to show lower attrition and better performance.
* Overtime Analysis: Certain departments had overtime rates above 30%, potentially contributing to burnout and turnover.
* Salary Hikes & Attrition: A small segment of employees received salary increases yet still left, indicating non-financial attrition causes such as culture or job satisfaction.

## Recommendations

* Retention Strategy by Department: Develop targeted retention programs for high-attrition departments like Sales and HR.
* Balanced Workload: Reduce overtime and implement flexible schedules in departments showing work-life imbalance.
* Performance-Linked Training: Sustain regular, structured training sessions — proven to enhance productivity and engagement.
* Non-Financial Incentives: Improve workplace culture, recognition, and growth opportunities beyond salary adjustments.
* Data Monitoring: Build an internal HR analytics dashboard to track attrition, satisfaction, and training KPIs over time.

## Sample Query

```sql
-- Identify department with highest attrition rate
SELECT Department, COUNT(*) AS Attrition_Count
FROM Table1
WHERE Attrition = 'Yes'
GROUP BY Department
ORDER BY Attrition_Count DESC
LIMIT 1;
```
```sql
-- Analyze the impact of training on performance
SELECT training_times_last_year, AVG(performance_rating) AS Avg_Performance
FROM Table2 T2
JOIN Table3 T3 ON T2.emp_no = T3.emp_no
GROUP BY training_times_last_year
ORDER BY Avg_Performance DESC;
```

## Tech Stack Summary

* Language: SQL
* Database: MySQL / PostgreSQL
* Environment: Jupyter Notebook / SQL Workbench
* Analysis Type: HR Analytics (Descriptive + Diagnostic)

## Author

**Holiness Segun-Olufemi**
Public Policy Professional | Data Scientist | Researcher
