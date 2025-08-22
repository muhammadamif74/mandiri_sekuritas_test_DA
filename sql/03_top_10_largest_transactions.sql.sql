--3.Top 10 largest transactions

SELECT 
    t.id,
    t.date,
    SUM(CAST(REPLACE(REPLACE(amount, '$', ''), ',', '') AS NUMERIC)) AS total_amount,
    c.client_id,
    c.card_brand,
    u.gender,
    u.yearly_income
FROM `mandiri_sekuritas_test.transactions_data` t
JOIN `mandiri_sekuritas_test.cards_data` c ON t.card_id = CAST(c.id AS STRING)
JOIN `mandiri_sekuritas_test.users_data` u ON c.client_id = u.id
GROUP BY t.id,t.date,c.client_id,c.card_brand, u.gender, u.yearly_income
ORDER BY total_amount DESC
LIMIT 10