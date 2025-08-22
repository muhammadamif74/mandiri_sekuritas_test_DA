--2.TOP Merchant Categories (MCC), State and City

SELECT
  mcc,
  merchant_city,
  merchant_state,
  COUNT(*) AS transaction_count,
  SUM(CAST(REPLACE(REPLACE(amount, '$', ''), ',', '') AS NUMERIC)) AS total_amount
FROM `midyear-bivouac-432913-k4.mandiri_sekuritas_test.transactions_data`
GROUP BY mcc,
	merchant_city,
	merchant_state
ORDER BY total_amount DESC
