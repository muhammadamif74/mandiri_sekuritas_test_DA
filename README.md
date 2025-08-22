# Mandiri Sekuritas – Data Analyst Technical Test

## 📌 Overview
Repository ini berisi hasil pengerjaan technical test Data Analyst oleh **Muhammad Amif**.

Dataset:
- **transaction_data** → detail transaksi (id, date, client_id, card_id, amount, use_chip, mcc, errors, dll)
- **users_data** → profil user (client_id, gender, age, income, credit_score, dll)
- **cards_data** → metadata kartu (card_id, brand, has_chip, acct_open_date, limit, dll)

Tujuan:
- Menjawab pertanyaan bisnis melalui SQL.
- Membuat dashboard interaktif di Looker Studio.
- Menyusun presentasi insight & rekomendasi.

---

## 📂 Struktur
```
/sql             -> seluruh query SQL (01..15)
/presentation    -> presentasi hasil analisis (insights.pdf)
/data            -> contoh dataset (opsional)
README.md
```

---

## ❓ Business Questions (ringkas)
1) Daily transactions trend  
2) Total amount online vs non-online  
3) Top 10 largest transactions  
4) Top Merchant Categories (MCC), State, City  
5) Distribution of current age  
6) Average income per gender  
7) Income vs retirement age  
8) Average number of credit cards per age group  
9) Distribution of cards by brand  
10) Comparison: Credit vs Debit vs Prepaid  
11) Avg limit, total amount, utilization by account open year  
12) Number of cards with chips vs without chips  
13) Cards found on the dark web  
14) Transaction errors (error rate & types)  
15) Correlation: total debt vs credit score  

---

## 📊 Dashboard
Looker Studio link: **(isi di sini)**

Saran filter global: gunakan *Date Range Control* dan pastikan setiap sumber data memiliki field `date` (DATE) dan/atau `month_date` yang konsisten.

---

## ⚙️ Cara Pakai Cepat
1. Taruh semua query di folder `/sql` (nama file sudah disediakan 01..15).  
2. (Opsional) Taruh dataset contoh di `/data`.  
3. Taruh presentasi final di `/presentation/insights.pdf`.  
4. Commit & push ke GitHub.

---

## 👤 Author
**Muhammad Amif** – Candidate, Data Analyst
