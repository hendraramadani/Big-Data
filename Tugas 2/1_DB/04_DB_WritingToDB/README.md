# 04_DB_WritingToDB Exercise
  
  Deskripsi:
  
  ![enter image description here](Dokumentasi/0_deskripsi.PNG)
  
  Untuk Workflownya kurang lebih seperti ini
  
  ![enter image description here](Dokumentasi/1_workflow.PNG)
  
  Part dari workflow yang sama dengan exercise 2
  
  ![enter image description here](Dokumentasi/7_sameflow.png)
  
  Database data preparation
  
  ![enter image description here](Dokumentasi/2_preparation.PNG)
  
  Kita pilih table 051117740000055_ss13pme
  
  ![enter image description here](Dokumentasi/3_table_select.PNG)
  
  Kita tambahkan database table writer untuk menduplikasi table yang kita gunakan dan sebelum kita memanipulasinya ke dalam table 05111740000055_ss13pme_original
  
  ![enter image description here](Dokumentasi/4_saveoriginal.PNG)
  
  Konfigurasinya seperti ini
  
  ![enter image description here](Dokumentasi/5_saveoriginal_option.PNG)
  
  Setelah kita query ke Dbeaver maka akan keluar data duplikasi dari table 05111740000055_ss13pme
  
  ![enter image description here](Dokumentasi/6_saveoriginal_result.PNG)
  
  Kita Tambahkan Tampstamp & model creator
  
  ![enter image description here](Dokumentasi/8_timestamp_creator.PNG)
  
  Workflownya Seperti ini
  
  ![enter image description here](Dokumentasi/9_workflow_timestamp.PNG)
  
  lalu hasil dari workflow diatas kita masukkan ke dalam db writter
  
  ![enter image description here](Dokumentasi/10_model_dbwriter.PNG)
  
  Untuk konfigurasi db writternya seperti ini
  
  ![enter image description here](Dokumentasi/11_model_dbwriter.PNG)
  
  Hasil dapat kita lihat dengan Mengwuery table 05111740000055_model dalam Dbeaver
  
  ![enter image description here](Dokumentasi/result_model_dbwriter.PNG)
  
  Output dari Decision Tree Predictor Kita Masukkan kedalam DB update, dengan harapan data prediksi dari decision tree dapat kita masukkan ke dalam colom Cow dengan mengupdate datanya
  
  ![enter image description here](Dokumentasi/12_dbupdate.PNG)
  
  Dengan Konfigurasi Seperti ini
  
  ![enter image description here](Dokumentasi/13_update_option.PNG)
  
  Hasilnya dapat kita Lihat di dalam Dbeaver table 05111740000055_ss13pme pada kolom Cow sudah terupdate semua data pada setiap rownya dengan menggunakan data dari decision tree predictor pada tahap diatas
  
  ![enter image description here](Dokumentasi/result_dbupdate.PNG)
  
  
