--2. Total Amount Online vs Non Online

SELECT use_chip,
		 DATE(PARSE_DATETIME('%d/%m/%Y %H:%M', date)) AS transaction_date,
	   COUNT(*) as transaction_count,
	   SUM(CAST(REPLACE(REPLACE(amount, '$', ''), ',', '') AS NUMERIC)) AS total_amoun
FROM `mandiri_sekuritas_test.transactions_data` t
JOIN `mandiri_sekuritas_test.cards_data` c ON t.card_id = CAST(c.id AS STRING)
GROUP BY use_chip,transaction_date