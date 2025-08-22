--6.Income vs retirement age

SELECT retirement_age,
	   AVG(yearly_income) AS avg_income 
FROM  `mandiri_sekuritas_test.users_data` u
JOIN `mandiri_sekuritas_test.transactions_data` t
ON t.client_id = CAST(u.id AS STRING)  
GROUP BY retirement_age
ORDER BY retirement_age;