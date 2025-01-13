-- 1. Income Group Distribution
-- Goal: Understand how customers are distributed across income groups.
-- SELECT 
--     ig.income_group_desc AS Income_Group, 
--     COUNT(c.customer_identifier) AS Customer_Count
-- FROM 
--     customers c
-- JOIN 
--     income_group ig 
-- ON 
--     c.income_group_code = ig.income_group_code
-- GROUP BY 
--     ig.income_group_desc, ig.income_group_code
-- ORDER BY 
--     ig.income_group_code ASC;


-- 2. Income Group vs. Average Age
-- Goal: Determine the average age of customers in each income group.
-- SELECT 
--     ig.income_group_desc AS Income_Group, 
--     ROUND(AVG(c.age)) AS Average_Age
-- FROM 
--     customers c
-- JOIN 
--     income_group ig 
-- ON 
--     c.income_group_code = ig.income_group_code
-- GROUP BY 
--     ig.income_group_desc, ig.income_group_code
-- ORDER BY 
--     ig.income_group_code;


-- 3. Income Group vs. Number of Accounts
-- Goal: Explore how the number of accounts varies by income group.
-- SELECT 
--     ig.income_group_desc AS Income_Group, 
--     ROUND(AVG(c.number_of_accounts)) AS Avg_Number_of_Accounts
-- FROM 
--     customers c
-- JOIN 
--     income_group ig 
-- ON 
--     c.income_group_code = ig.income_group_code
-- GROUP BY 
--     ig.income_group_code
-- ORDER BY 
--     ig.income_group_code


-- 4. Monthly Trends by Channel (Transaction Count)
-- SELECT
--     EXTRACT(YEAR FROM record_date) AS transaction_year,
--     EXTRACT(MONTH FROM record_date) AS transaction_month,
--     channel,
--     COUNT(transaction_id) AS transaction_count
-- FROM transactions
-- GROUP BY transaction_year, transaction_month, channel
-- ORDER BY transaction_year, transaction_month, channel;



