-- 1. Daily Transactions Trend

SELECT
  DATE(PARSE_DATETIME('%d/%m/%Y %H:%M', date)) AS transaction_date,
  COUNT(*) AS total_transaction,
  SUM(CAST(REPLACE(REPLACE(amount, '$', ''), ',', '') AS NUMERIC)) AS total_amount,
  COUNT(DISTINCT client_id) AS active_users
FROM `mandiri_sekuritas_test.transactions_data`
WHERE date IS NOT NULL
GROUP BY transaction_date
ORDER BY transaction_date;
