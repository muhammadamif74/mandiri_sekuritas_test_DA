--5. Average Income per Gender
    
SELECT gender,
  DATE(PARSE_DATETIME('%d/%m/%Y %H:%M', date)) AS transaction_date, 
	AVG(yearly_income) AS avg_income,
	AVG(per_capita_income) AS avg_per_capita_income 
FROM  `mandiri_sekuritas_test.users_data` u
JOIN `mandiri_sekuritas_test.transactions_data` t
ON t.client_id = CAST(u.id AS STRING) 
GROUP BY gender,transaction_date