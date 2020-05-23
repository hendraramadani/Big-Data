# Big Data : Evaluasi Akhir Semester
# Daily Minimum Temperature in Meter

![enter image description here](Dokumentasi/workflow.PNG)

![enter image description here](Dokumentasi/extract.PNG)

![enter image description here](Dokumentasi/agregation.PNG)

![enter image description here](Dokumentasi/pca.PNG)

# Business Understanding
Proses yang dilakukan pada dataset yang digunakan adalah :

Menganalisis rata-rata produksi listrik pada kurun waktu tertentu (time series), dengan mempertimbangkan:
  - Total Usage: Keseluruhan Produksi Listrik dalam satuan waktu Bulan (Dikarenakan semua data unik dan tidak memiliki ID). Terdapat variable hari namun hanya 1 variasi.
  - Usage by Year: Produksi Listrik per Tahun dalam satuan waktu Bulan.

# Data Understanding
![enter image description here](Dokumentasi/data_understanding/data.PNG)

Merupakan dataset yang isinya pencatatan suhu terendah setiap hari

Dataset yang digunakan terdapat 2 attribut utama

 - **DATE**: Tanggal produksi.
 - **IPG2211A2N**: Satuan utilitas elektrik dan gas.

# Data Preparation

1. Read 
Untuk dataset sudah disiapkan sebelumnya `electric-production.csv`
Data di buka dan di baca menggunakan node **File Reader**

![enter image description here](Dokumentasi/data_preparation/file_reader.PNG)

![enter image description here](Dokumentasi/data_preparation/file_reader_result.PNG)

2. Menambahkan Bigdata Environtment
Digunakan untuk kebutuhan terkait pemrosesan data secara masal

![enter image description here](Dokumentasi/data_preparation/big_data_env.PNG)

# Modeling
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
![](Dokumentasi/evaluation/eval.PNG)

- Pada tahap Evaluasi menggunakan komponen-komponen seperti **PCA, K-means, Scatter Plot** untuk menganalisis menggunakan PCA dan K-means kemudian di plot pada tabel menggunakan Scatter Plot
- Berikut isi dari komponen **PCA, K-means, Scatter Plot**<br>
![](Dokumentasi/evaluation/pca-mertanode.PNG)

- Pertama-tama melakukan normalisasi menggunakan node **Spark Normalizer**<br>
![](Dokumentasi/evaluation/pca-normalizer.PNG)

- Kemundian melakukan PCA (**Principal Component Analysis**). Dikarenakan dataset berukukan kecil maka saya menggunakan 100% dari dataset<br>
![](Dokumentasi/evaluation/pca-pca.PNG)

- Beginilah hasil dari PCA yang telah dilakukan<br>
![](Dokumentasi/evaluation/pca-pca-result.PNG)

- Lalu untuk pengelompokan cluster mengunakan algoritma K-means dengan node **Spark k-Means**<br>
![](Dokumentasi/evaluation/pca-kmeans.PNG)

- Dan beginilah hasil dari pengelompokan K-means<br>
![](Dokumentasi/evaluation/pca-kmeans-result.PNG)

- Tambahkan column filter untuk menampilkan month dan cluster<br>
![](Dokumentasi/evaluation/pca-columnfilter.PNG)

- Beginilah hasilnya setelah di filter<br>
![](Dokumentasi/evaluation/pca-columnfilter-result.PNG)

- Setelah itu tambahkan joiner seperti dengan parameter "month"<br>
![](Dokumentasi/evaluation/pca-join.PNG)

- Dan beginilah hasil setelah menggabungkan **PCA** dan **K-Means**<br>
![](Dokumentasi/evaluation/pca-join-result.PNG)

- Kemudian tambahkan node **Spark to Table** untuk mengubah data spark menjadi table
- Setelah itu lakukan denormalisasi untuk membuat table view
- Lalu tambahkan node **Number to String** untuk keperluan kustomisasi tabel dengan konfigurasi sebagai berikut<br>
![](Dokumentasi/evaluation/pca-number.PNG)

- Beginilah hasil input untuk kustomisasi tabel<br>
![](Dokumentasi/evaluation/pca-number-result.PNG)

- Lalu atur warna pada cluster menggunakan node **Color Manager**<br>
![](Dokumentasi/evaluation/pca-color.PNG)

- Beginilah hasil dari pewarnaan cluster dalam bentuk tabel<br>
![](Dokumentasi/evaluation/pca-color-result.PNG)

- Kemudian lakukan plotting menggunakan node **Scatter Plot**<br>
![](Dokumentasi/evaluation/pca-plot.PNG)

- Beginilah hasil dari plotting menggunakan **Scatter Plot**<br>
![](Dokumentasi/evaluation/pca-plot-result.PNG)

- Setelah itu membuat node **Table View** untuk membuat Aggregated Production Data<br>
![](Dokumentasi/evaluation/pca-view.PNG)

- Dan beginilah tampilan JavaScript untuk tabel<br>
![](Dokumentasi/evaluation/pca-view-result.PNG)

- Kemudian pada denormalisasi ubahlah menjadi spark kembali menggunakan **Table to Spark**
- Menghilangkan underscore pada PCA dimension untuk deployment menggunakan node **Spark Column Rename**<br>
![](Dokumentasi/evaluation/pca-rename.PNG)


# Deployment
![enter image description here](Dokumentasi/deployment/deployment.PNG)

Untuk deployment sendiri, data dari step Evaluation akan di deploy ke dalam HIVE menggunakan **Spark to Hive** dan Parquet menggunakan **Spark to Parquet**, **Spark to Parquet** berfungsi untuk mengubah format data yang awalnya adalah **DataFrame/RDD** menjadi format **file Parquet**, Berikut merupakan konfigurasi dari **Spark to Hive** 

![enter image description here](Dokumentasi/deployment/spark_to_hive.PNG)

Tabel akan diberi nama **hasil_electric**

![enter image description here](Dokumentasi/deployment/result.PNG)

Berikut merupakankonfigurasi untuk **Spark to Parquet**

![enter image description here](Dokumentasi/deployment/spark_to_parquet.PNG)

Untuk hasilnya sendiri akan disimpan pada direktori **/electric_aggs**. 
Berikut adalah hasilnya:

![enter image description here](Dokumentasi/deployment/parquet_result.PNG)