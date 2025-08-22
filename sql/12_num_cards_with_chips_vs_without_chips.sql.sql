--12.Number of cards with chips vs. without chips


SELECT
     DATE(PARSE_DATETIME('%d/%m/%Y %H:%M', date)) AS transaction_date,
    has_chip,
    COUNT(*) AS num_cards,
    AVG(credit_limit) AS avg_limit
FROM `mandiri_sekuritas_test.cards_data` c
JOIN `mandiri_sekuritas_test.transactions_data`t
ON CAST(c.id AS STRING) = t.card_id
GROUP BY has_chip,transaction_date