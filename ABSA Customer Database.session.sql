SELECT 
    CUSTOMER_STATUS, 
    COUNT(*) AS CUSTOMER_COUNT, 
    ROUND(100.0 * COUNT(*) / (SELECT COUNT(*) FROM customers), 2) AS PERCENTAGE
FROM (
    SELECT 
        c.CUSTOMER_IDENTIFIER,
        CASE 
            WHEN t.LAST_TRANSACTION_DATE >= '2022-03-01' THEN 'Active'
            ELSE 'Inactive'
        END AS CUSTOMER_STATUS
    FROM 
        customers c
    LEFT JOIN (
        SELECT 
            CUSTOMER_IDENTIFIER, 
            MAX(RECORD_DATE) AS LAST_TRANSACTION_DATE
        FROM 
            transactions
        GROUP BY 
            CUSTOMER_IDENTIFIER
    ) t
    ON c.CUSTOMER_IDENTIFIER = t.CUSTOMER_IDENTIFIER
) sub
GROUP BY CUSTOMER_STATUS;
SELECT 
    CUSTOMER_STATUS, 
    COUNT(*) AS CUSTOMER_COUNT, 
    ROUND(100.0 * COUNT(*) / (SELECT COUNT(*) FROM customers), 2) AS PERCENTAGE
FROM (
    SELECT 
        c.CUSTOMER_IDENTIFIER,
        CASE 
            WHEN t.LAST_TRANSACTION_DATE >= '2022-03-01' THEN 'Active'
            ELSE 'Inactive'
        END AS CUSTOMER_STATUS
    FROM 
        customers c
    LEFT JOIN (
        SELECT 
            CUSTOMER_IDENTIFIER, 
            MAX(RECORD_DATE) AS LAST_TRANSACTION_DATE
        FROM 
            transactions
        GROUP BY 
            CUSTOMER_IDENTIFIER
    ) t
    ON c.CUSTOMER_IDENTIFIER = t.CUSTOMER_IDENTIFIER
) sub
GROUP BY CUSTOMER_STATUS;
