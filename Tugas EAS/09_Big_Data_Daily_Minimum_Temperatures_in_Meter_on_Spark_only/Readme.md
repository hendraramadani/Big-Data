


# Business Understanding

# Data Understanding
![enter image description here](Dokumentasi/data_understanding/data.PNG)

Dataset yang digunakan terdapat 3 attribut utama

 - **meterID**: id setiap Meteran listrik
 - **enc_datetime**: enkripsi dari tanggal
 - **reading**: nilai meter yang tebaca di meteran listrik

# Data Preparation

1. Read 
Untuk dataset sudah disiapkan sebelumnya `daily-minimum-temperatures-in-me.csv`
Data di buka dan di baca menggunakan node **File Reader**

![enter image description here](Dokumentasi/data_preparation/file_reader.PNG)

![enter image description here](Dokumentasi/data_preparation/file_reader_result.PNG)

2. Menambahkan Bigdata Environtment
Digunakan untuk kebutuhan terkait pemrosesan data secara masal

![enter image description here](Dokumentasi/data_preparation/big_data_env.PNG)

## 4. Modeling
Karena Kebutuhan pengolahan data/ Query data maka untuk step Modeling data akan diubah menjadi format yang lain yaitu dataframe

Pertama Tama kita tambahkan node **Create Local Big Data Environment** ,karena kebutuhan penggunaan spark 

![enter image description here](Dokumentasi/modeling/create_bigdata_env.PNG)

![enter image description here](Dokumentasi/modeling/load_hive.PNG)

![enter image description here](Dokumentasi/modeling/load_data.PNG)

Dataset yang sebelumnya sudah diload ke **File Reader**, akan diload ke HIVE menggunakan metanode **Load Data**.
Jadi untuk dataset yang sebelumnya di baca oleh node **FIle Reader** akan di load ke dalam HIVE menggunakan meta node **Load Data** 

Di dalam metanode Load Data, terdapat 2 proses lagi, yaitu **DB Table Creator** dan **DB Loader**.
Pada node **DB Table Creator**, table HIVE diberi nama **suhu**

![enter image description here](Dokumentasi/modeling/table_creator.PNG)

![enter image description here](Dokumentasi/modeling/input_output.PNG)

Node **DB Table Creator** memerlukan 2 input, yaitu: 

 - **kotak merah** (DB Connection dimana disini menggunakan Spark HIVE)
 -  **segitiga garis hitam** (berasal dari File Reader)

Sedangkan untuk output-nya adalah kotak merah yang menandakan DB Connection yang telah berhasil dibuat.

![enter image description here](Dokumentasi/modeling/db_loader.PNG)

![enter image description here](Dokumentasi/modeling/input_output_ports.PNG)

Lalu pada node **DB Loader**, memerlukan 3 input yaitu:

 - **segitiga hitam** (berasal dari File Reader).
 - **kotak merah** (DB Connection dari DB Table Creator).
 - **kotak garis biru** (Koneksi HIVE dari node Create Local Big Data Environment).

dan 1 output, yaitu:

 - **kotak coklat** (data yang telah berbentuk HIVE).

Ketika dijalankan akan mendapat hasil seperti ini

![enter image description here](Dokumentasi/modeling/db_loader_result.PNG)

Node **Hive to Spark** digunakan untuk mengimportkan data ke dalam bentuk dataframe

![enter image description here](Dokumentasi/modeling/load_hive.PNG)

![enter image description here](Dokumentasi/modeling/input_output_ports2.PNG)

Node **Hive to Spark** memerlukan 2 input, yaitu:

 - **kotak coklat** (data dari node DB Loader yang benbentuk HIVE)
 - **kotak abu-abu** (Spark context dari node Create Local Big Data Environment)

dan 1 output, yaitu:

 - **kotak hitam** (data yang telah berbentuk DataFrame/RDD)

# Evaluation

# Deployment