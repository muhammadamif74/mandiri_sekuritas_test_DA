--10.Comparisons of Credit vs Debit vs Debit (Prepaid)

SELECT 
    DATE(PARSE_DATETIME('%d/%m/%Y %H:%M', date)) AS transaction_date,
    card_type,
    COUNT(*) AS num_cards,
    AVG(credit_limit) AS avg_limit
FROM `mandiri_sekuritas_test.transactions_data` t
JOIN `mandiri_sekuritas_test.cards_data` c ON t.card_id = CAST(c.id AS STRING)
GROUP BY card_type,transaction_date