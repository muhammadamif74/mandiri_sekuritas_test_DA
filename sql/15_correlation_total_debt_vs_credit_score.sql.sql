--14.Correlation between total debt and credit score

SELECT
    credit_score,
    AVG(total_debt) AS avg_debt
FROM  `mandiri_sekuritas_test.users_data` u
JOIN `mandiri_sekuritas_test.transactions_data` t
ON t.client_id = CAST(u.id AS STRING) 
GROUP BY credit_score
ORDER BY credit_score;