--20.Transaction Errors

SELECT
  DATE(PARSE_DATETIME('%d/%m/%Y %H:%M', date)) AS transaction_date,
  t.use_chip,
  t.errors,
  c.card_brand,
  c.card_type,
  COUNT(*) AS tx_count,
  SUM(CAST(REPLACE(REPLACE(amount, '$', ''), ',', '') AS NUMERIC)) AS total_amount
FROM `mandiri_sekuritas_test.transactions_data` t
JOIN `mandiri_sekuritas_test.cards_data` c
ON t.card_id = CAST(c.id AS STRING)
WHERE t.errors IS NOT NULL
GROUP BY t.use_chip,transaction_date,
  t.errors,
  c.card_brand,
  c.card_type
ORDER BY tx_count DESC;
