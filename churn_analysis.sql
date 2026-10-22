-- MySQL queries for Customer Churn Analysis
-- Import CSV into a table named customer_churn before running.

SELECT * FROM customer_churn LIMIT 10;

-- Total customers
SELECT COUNT(*) AS total_customers FROM customer_churn;

-- Churned vs retained customers
SELECT Churn, COUNT(*) AS customer_count
FROM customer_churn
GROUP BY Churn;

-- Overall churn rate
SELECT ROUND(100.0 * SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) / COUNT(*), 2)
       AS churn_rate_percent
FROM customer_churn;

-- Churn count by contract type
SELECT Contract, Churn, COUNT(*) AS customer_count
FROM customer_churn
GROUP BY Contract, Churn
ORDER BY Contract, Churn;

-- Average monthly charge and tenure by churn status
SELECT Churn,
       ROUND(AVG(MonthlyCharges), 2) AS avg_monthly_charges,
       ROUND(AVG(TenureMonths), 2) AS avg_tenure_months
FROM customer_churn
GROUP BY Churn;

-- Churned customers by payment method
SELECT PaymentMethod, COUNT(*) AS churned_customers
FROM customer_churn
WHERE Churn='Yes'
GROUP BY PaymentMethod
ORDER BY churned_customers DESC;

-- Churned customers with monthly charges >= 80
SELECT CustomerID, Contract, TenureMonths, MonthlyCharges, PaymentMethod
FROM customer_churn
WHERE Churn='Yes' AND MonthlyCharges >= 80
ORDER BY MonthlyCharges DESC;
