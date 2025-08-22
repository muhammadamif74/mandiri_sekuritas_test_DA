--4. Distribution of Current Age
    
SELECT current_age,
	DATE(PARSE_DATETIME('%d/%m/%Y %H:%M', date)) AS transaction_date,
	COUNT(*) AS num_people
FROM  `mandiri_sekuritas_test.users_data` u
JOIN `mandiri_sekuritas_test.transactions_data` t
ON t.client_id = CAST(u.id AS STRING) 
GROUP BY current_age,transaction_date
ORDER BY num_people DESC;
