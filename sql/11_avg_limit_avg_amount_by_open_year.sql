--11.Average limit, total amount, utilization based on year of account opening

SELECT
    DATE(PARSE_DATETIME('%d/%m/%Y %H:%M', date)) AS transaction_date,
    DATE(PARSE_DATETIME('%m/%Y', acct_open_date)) AS acct_open_date,
    DATE(PARSE_DATETIME('%m/%Y', expires)) AS expires,
    AVG(credit_limit) AS avg_limit,
    SUM(CAST(REPLACE(REPLACE(amount, '$', ''), ',', '') AS NUMERIC)) AS total_amount,
    SAFE_DIVIDE(SUM(u.total_debt), SUM(c.credit_limit)) * 100.00 AS utilization,
    SUM(u.total_debt) AS total_debt,
    SUM(c.credit_limit) AS total_credit_limit
FROM `mandiri_sekuritas_test.cards_data` c
JOIN `mandiri_sekuritas_test.transactions_data`t
ON CAST(c.id AS STRING) = t.card_id
JOIN `mandiri_sekuritas_test.users_data` u
ON t.client_id = CAST(u.id AS STRING)
GROUP BY acct_open_date,expires,transaction_date
ORDER BY acct_open_date;
