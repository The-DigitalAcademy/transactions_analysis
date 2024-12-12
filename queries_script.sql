

-- Question 1
-- SELECT i.income_group_desc, Round(AVG(t.account_balance)) AS avg_transaction_balance, COUNT(t.customer_identifier)
-- FROM transactions t
-- JOIN customers c ON t.customer_identifier = c.customer_identifier
-- JOIN income_group i ON c.income_group_code = i.income_group_code
-- GROUP BY i.income_group_desc, i.income_group_code
-- ORDER BY i.income_group_code ASC

-- Question 2
-- SELECT t.channel, COUNT(t.customer_identifier) AS transaction_count, ROUND(AVG(t.amt)) AS avg_transaction_amount
-- FROM transactions t
-- GROUP BY t.channel
-- ORDER BY avg_transaction_amount DESC;


-- Question 3
-- SELECT EXTRACT(MONTH FROM record_date) AS transaction_month, COUNT(transaction_id) AS transaction_count
-- FROM transactions
-- GROUP BY transaction_month
-- ORDER BY transaction_month;


-- SELECT
--     EXTRACT(YEAR FROM record_date) AS transaction_year,
--     EXTRACT(MONTH FROM record_date) AS transaction_month,
--     COUNT(customer_identifier) AS transaction_count
-- FROM transactions
-- GROUP BY transaction_year, transaction_month
-- ORDER BY transaction_year, transaction_month;



-- Question 4
-- SELECT c.sex_code, COUNT(t.transaction_id) AS transaction_count, AVG(t.amt) AS avg_transaction_amount
-- FROM transactions t
-- JOIN customers c ON t.customer_identifier = c.customer_identifier
-- GROUP BY c.sex_code;


-- Question 5
-- SELECT
--     EXTRACT(YEAR FROM record_date) AS transaction_year,
--     EXTRACT(MONTH FROM record_date) AS transaction_month,
--     product_code  AS account_type, 
--     SUM(amt) as cash_flow
-- FROM transactions
-- WHERE product_code = 'CHEQ'
-- GROUP BY product_code, transaction_year, transaction_month
-- ORDER BY transaction_year, transaction_month;

-- SELECT
--     EXTRACT(YEAR FROM record_date) AS transaction_year,
--     EXTRACT(MONTH FROM record_date) AS transaction_month,
--     product_code AS account_type, 
--     SUM(amt) as cash_flow
-- FROM transactions
-- WHERE product_code = 'SAVE'
-- GROUP BY product_code, transaction_year, transaction_month
-- ORDER BY transaction_year, transaction_month;


-- Question 6
-- SELECT i.income_group_desc, AVG(t.amt) AS avg_investment_transaction
-- FROM transactions t
-- JOIN customers c ON t.customer_identifier = c.customer_identifier
-- JOIN income_group i ON c.income_group_code = i.income_group_code
-- WHERE t.transaction_description LIKE '%INVESTMENT%'
-- GROUP BY i.income_group_desc;


-- Question 7
-- SELECT i.income_group_desc, c.sex_code, COUNT(t.customer_identifier) AS missed_payments
-- FROM transactions t
-- JOIN customers c ON t.customer_identifier = c.customer_identifier
-- JOIN income_group i ON i.income_group_code = c.income_group_code
-- WHERE t.transaction_description = 'BAD DEBT W/OFF' OR t.transaction_description = 'DC UNPAID' OR t.transaction_description = 'NAEDO DEBIT ORDER'
-- GROUP BY c.sex_code, i.income_group_desc;


-- Question 8
-- SELECT c.customer_identifier, i.income_group_desc, COUNT(t.transaction_id) AS write_off_count
-- FROM transactions t
-- JOIN customers c ON t.customer_identifier = c.customer_identifier
-- JOIN income_group i ON c.income_group_code = i.income_group_code
-- WHERE t.transaction_description LIKE '%W/OFF%'
-- GROUP BY c.customer_identifier, i.income_group_desc;
