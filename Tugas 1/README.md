# Big-Data 2020
### Hendra Ramadani
### 05111740000055

# Business Understanding
 1. Genre Paling populer 
    
    ![enter image description here](https://github.com/hendraramadani/Big-Data/blob/master/Tugas%201/Dokumentasi/Genre_segmen.PNG)
    
 2. Penanyi yang Sering Masuk Top Chart
 3. 
# Data Understanding
  Saya Menggunakan Dataset dari https://www.kaggle.com/leonardopena/top-spotify-songs-from-20102019-by-year yang mempunyai 603 baris data dan mempunyai 15 kolom, berikut penjelasan untuk setiap kolomnya
  - ID -> ID dari setiap baris data
  - Title -> Judul dari lagu
  - Artist -> Penanyi Lagu
  - Top Genre -> Genre Lagu
  - Year -> Tahun lagu dibuat
  - bpm -> Beats per menit dari lagu 
  - nrgy -> Tkat untuk menunjukkan sebuah lagu energik
  - dnce -> Tingkat untuk kemudahan dibawa menari
  - dB -> Tingkat Kekerasan lagu / Loud
  - live -> Menunjukan kualitas Live record
  - val -> Tingkat suasana yang dibawakan lagu
  - dur -> Panjang durasi lagu
  - acus -> tingkat akustik dalam lagu
  - spch -> Kemudahan untuk dinyanyikan
  - pop-> Popularitas dari Lagu tersebut
# Data Preparation
  * Pertama Saya siapkan dataset terlebih dahulu
  
  ![enter image description here](https://github.com/hendraramadani/Big-Data/blob/master/Tugas%201/Dokumentasi/Dataset%20full.PNG)
  
  * Lalu Saya Split Menjadi 10 bagian berdasarkan tahun rilis lagu
  
  ![enter image description here](https://github.com/hendraramadani/Big-Data/blob/master/Tugas%201/Dokumentasi/Dataset%20Split.PNG)
  
  * Untuk yang database sementara saya import semuanya terlebih dahulu
  
  ![enter image description here](https://github.com/hendraramadani/Big-Data/blob/master/Tugas%201/Dokumentasi/DB%20import.PNG)
  
# Modeling
  * Full Model Dalam Knime
    
     ![enter image description here](https://github.com/hendraramadani/Big-Data/blob/master/Tugas%201/Dokumentasi/FULL%20MODEL.PNG)
  
  
# Evaluation
# Deployment
  Untuk Mengenerate hasil ke CSV dan Database saya menggunakan CSV Writer dan DB Writer
  
  ![enter image description here](https://github.com/hendraramadani/Big-Data/blob/master/Tugas%201/Dokumentasi/CSV_DB_deployment.PNG)
  ### Hasil Deplyoment CSV
  
  ![enter image description here](https://github.com/hendraramadani/Big-Data/blob/master/Tugas%201/Dokumentasi/CSV_Result.PNG)
  
  ### Hasil Deployment Database
  
  ![enter image description here](https://github.com/hendraramadani/Big-Data/blob/master/Tugas%201/Dokumentasi/DB_Result.PNG)
