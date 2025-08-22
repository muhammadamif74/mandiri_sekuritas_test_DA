--8.Average number of credit cards per age group

SELECT
DATE(PARSE_DATETIME('%d/%m/%Y %H:%M', date)) AS transaction_date,
    CASE 
        WHEN current_age < 30 THEN '<30'
        WHEN current_age BETWEEN 30 AND 50 THEN '30-50'
        ELSE '>50'
    END AS age_group,
    AVG(num_credit_cards) AS avg_credit_cards
FROM  `mandiri_sekuritas_test.users_data` u
JOIN `mandiri_sekuritas_test.transactions_data` t
ON t.client_id = CAST(u.id AS STRING)
GROUP BY 
    CASE 
        WHEN current_age < 30 THEN '<30'
        WHEN current_age BETWEEN 30 AND 50 THEN '30-50'
        ELSE '>50'
    END,transaction_date