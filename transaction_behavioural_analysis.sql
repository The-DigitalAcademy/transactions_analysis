
-- Monthly Unpaid Transactions and Customer Count over the period of 14 months

-- SELECT 
--     CONCAT(EXTRACT(YEAR FROM t.record_date), '-', EXTRACT(MONTH FROM t.record_date)) AS year_month,
--     ROUND(SUM(t.amt)) AS total_unpaid,
--     COUNT(DISTINCT c.customer_identifier) AS bad_count
-- FROM transactions t
-- JOIN customers c ON t.customer_identifier = c.customer_identifier

-- WHERE transaction_description IN ('BAD DEBT W/OFF', 'DC UNPAID', 'NAEDO UNPAID', 'ACB DEBIT REVERSAL', 'UNPAID DEBIT')
-- GROUP BY year_month
-- ORDER BY year_month ASC;

-- 1. Channel vs Product Code
-- how each channel is used for transactions tied to specific product codes
-- SELECT
--     channel,
--     product_code,
--     COUNT(*) AS Transaction_Count,
--     ROUND(SUM(amt)) AS Total_Amount,
--     ROUND(AVG(amt)) AS Avg_Amount
-- FROM transactions
-- GROUP BY channel, product_code
-- ORDER BY channel;


-- 2.
-- SELECT
--     transaction_description,
--     channel,
--     COUNT(*) AS Transaction_Count,
--     ROUND(SUM(amt)) AS Total_Amount,
--     ROUND(AVG(amt)) AS Avg_Amount
-- FROM transactions
-- WHERE transaction_description IS NOT NULL
-- GROUP BY transaction_description, channel
-- ORDER BY channel

-- 2.1 
-- SELECT
--     transaction_description,
--     channel,
--     COUNT(*) AS Transaction_Count,
--     ROUND(SUM(amt)) AS Total_Amount,
--     ROUND(AVG(amt)) AS Avg_Amount
-- FROM transactions
-- WHERE transaction_description IS NOT NULL AND channel = 'system'
-- GROUP BY transaction_description, channel
-- ORDER BY transaction_count

-- 2.2 
-- SELECT
--     transaction_description,
--     channel,
--     COUNT(*) AS Transaction_Count,
--     ROUND(SUM(amt)) AS Total_Amount,
--     ROUND(AVG(amt)) AS Avg_Amount
-- FROM transactions
-- WHERE transaction_description IS NOT NULL AND channel = 'atm'
-- GROUP BY transaction_description, channel
-- ORDER BY transaction_count

-- 2.3 
-- SELECT
--     transaction_description,
--     channel,
--     COUNT(*) AS Transaction_Count,
--     ROUND(SUM(amt)) AS Total_Amount,
--     ROUND(AVG(amt)) AS Avg_Amount
-- FROM transactions
-- WHERE transaction_description IS NOT NULL AND channel = 'teller'
-- GROUP BY transaction_description, channel
-- ORDER BY transaction_count

 -- 2.3 
-- SELECT
--     transaction_description,
--     channel,
--     COUNT(*) AS Transaction_Count,
--     ROUND(SUM(amt)) AS Total_Amount,
--     ROUND(AVG(amt)) AS Avg_Amount
-- FROM transactions
-- WHERE transaction_description IS NOT NULL AND channel = 'internet'
-- GROUP BY transaction_description, channel
-- ORDER BY transaction_count

-- 3. 
-- SELECT
--     channel,
--     CASE
--         WHEN amt < 0 THEN 'Money Out'
--         WHEN amt > 0 THEN 'Money In'
--         ELSE 'Neutral'
--     END AS amount_category,
--     COUNT(*) AS transaction_count,
--     ROUND(SUM(amt)) AS total_amount
-- FROM transactions
-- GROUP BY channel, amount_category
-- ORDER BY channel ASC;


