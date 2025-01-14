-- SELECT
--     EXTRACT(YEAR FROM record_date) AS year,
--     TO_CHAR(record_date, 'Mon') AS month,  -- Abbreviated month
--     COUNT(*) AS transaction_count,
--     ROUND(SUM(amt)) AS total_transaction_value,
--     ROUND(AVG(amt)) AS avg_transaction_value
-- FROM transactions
-- GROUP BY year, month
-- ORDER BY year, month;


-- SELECT
--     EXTRACT(YEAR FROM record_date) AS year,
--     TO_CHAR(record_date, 'Mon') AS month,  -- Abbreviated month
--     product_code,
--     COUNT(*) AS transaction_count,
--     ROUND(SUM(amt)) AS total_transaction_value
-- FROM transactions
-- GROUP BY year, month, product_code
-- ORDER BY year, month, product_code;

-- SELECT
--     EXTRACT(YEAR FROM record_date) AS year,
--     TO_CHAR(record_date, 'Mon') AS month,  -- Abbreviated month
--     channel,
--     COUNT(*) AS transaction_count,
--     ROUND(SUM(amt)) AS total_transaction_value
-- FROM transactions
-- GROUP BY year, month, channel
-- ORDER BY year, month, channel;
