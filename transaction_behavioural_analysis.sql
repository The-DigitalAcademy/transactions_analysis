
-- Monthly Unpaid Transactions and Customer Count over the period of 14 months

SELECT 
    CONCAT(EXTRACT(YEAR FROM t.record_date), '-', EXTRACT(MONTH FROM t.record_date)) AS year_month,
    ROUND(SUM(t.amt)) AS total_unpaid,
    COUNT(DISTINCT c.customer_identifier) AS bad_count
FROM transactions t
JOIN customers c ON t.customer_identifier = c.customer_identifier

WHERE transaction_description IN ('BAD DEBT W/OFF', 'DC UNPAID', 'NAEDO UNPAID', 'ACB DEBIT REVERSAL', 'UNPAID DEBIT')
GROUP BY year_month
ORDER BY year_month ASC;