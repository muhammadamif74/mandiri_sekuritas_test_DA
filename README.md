# Mandiri Sekuritas – Data Analyst Technical Test - Muhammad Miftahul Amin Sumarno

## 📌 Overview
Proyek ini bertujuan menganalisis perilaku nasabah berdasarkan transaksi, profil pengguna, dan metadata kartu untuk menemukan pola penggunaan, risiko, dan peluang peningkatan layanan.

## Requirements
Menggunakan BigQuery dan Looker Studio

## Dataset Overview:
**transaction_data**
berisi detail transaksi harian per kartu.

Kolom:
  id → ID unik transaksi.
  date → tanggal transaksi.
  client_id → ID user pemilik kartu.
  card_id → ID kartu yang dipakai.
  amount → nominal transaksi.
  use_chip → apakah transaksi pakai chip (Swipe Transaction/Online Transaction).
  merchant_city, merchant_zip → lokasi merchant.
  mcc → kode kategori merchant (merchant category code).
  errors → error saat transaksi (contoh: insufficient balance, bad PIN, dll).

**cards_data**
berisi metadata kartu kredit/debit user.

Kolom:
  id → ID kartu.
  client_id → ID user pemilik kartu.
  card_brand → Visa, Mastercard, Amex, Discover.
  card_type → Credit/Debit/Prepaid.
  card_number, expires, cvv → detail kartu
  has_chip → kartu chip atau tidak.
  num_cards_issued → jumlah kartu yang diterbitkan untuk user.
  credit_limit → batas kredit kartu.
  acct_open_date → kapan kartu dibuka.
  year_pin_last_changed → terakhir kali PIN diubah.
  card_on_dark_web → apakah kartu ditemukan di dark web 

**users_data**
berisi profil/demografi user.

Kolom:
  id → ID user.
  current_age, retirement_age → umur sekarang & estimasi pensiun.
  birth_year, birth_month → data lahir.
  gender, address, latitude, longitude → data demografi & lokasi.
  per_capita_income, yearly_income → data pendapatan.
  total_debt → total utang.
  credit_score → skor kredit user.
  num_credit_cards → jumlah kartu yang dimiliki.

**Relasi antar tabel:**
users_data.id = transaction_data.client_id = cards_data.client_id
cards_data.id = transaction_data.card_id


Note : Data Transaksi hanya menggunakan periode Januari hingga November 2010 dikarenakan file yang terlalu besar (1,2 GB+) tidak dapat dimuat di BigQuery 

**Tujuan:**
- Menjawab pertanyaan bisnis melalui SQL.
- Membuat dashboard interaktif di Looker Studio.
- Menyusun presentasi insight & rekomendasi.


## 📂 Struktur
```
/sql             -> seluruh query SQL 
/presentation    -> presentasi hasil analisis (Mandiri Sekuritas Test Presentation - Data Analyst Position - Muhammad  Miftahul Amin Sumarno.pdf)
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
11) Avg limit, Avg amount, by account open year  
12) Number of cards with chips vs without chips  
13) Cards found on the dark web  
14) Transaction errors (error rate & types)  
15) Correlation: total debt vs credit score  

## Setup
 - Cek Dataset (Rows, Column, Missing Values, Duplicate, Data Type, Symbol)
 - Tidak ada yang di cleaning/drop columns/rows
 - Import Dataset to BigQuery
 - Analisis dan Query di BigQuery
 - Connect BigQuery to Looker Studio via Google Connector 
 - Visualization 

## 📊 Dashboard
Looker Studio link: 
https://lookerstudio.google.com/u/0/reporting/b71c98ef-2e64-44c9-b473-3e24fe638bbf/page/ZvBVF/edit

## 👤 Author
**Muhammad Amif** – Candidate, Data Analyst
