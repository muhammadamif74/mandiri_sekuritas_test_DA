--13.Cards found on the dark web

SELECT 
    COUNT(*) AS total_cards,
    SUM(CASE WHEN CAST(card_on_dark_web AS STRING) = 'Yes' THEN 1 ELSE 0 END) AS dark_web_count
FROM `mandiri_sekuritas_test.cards_data`