# 00_Setup_Hive_Table Exercise
  
  Deskripsi:
  
  ![enter image description here](Dokumentasi/0_deskripsi.PNG)
  
  Workflownya Seperti ini
  
  ![enter image description here](Dokumentasi/1_workflow.PNG)
  
  Disini menggunakan Big Data environtment
  
  ![enter image description here](Dokumentasi/2_BD_Environtment.PNG)
  
  Merupakan Option dari Big Data environtment
  
  ![enter image description here](Dokumentasi/3_BD_environtment_option.PNG)
  
  Selanjutnya kita tambahkan 2 Table Reader
  
  ![enter image description here](Dokumentasi/4_table_reader.PNG)
  
  Yang Pertama Kita Arahkan Path ke table ss13pme
  
  ![enter image description here](Dokumentasi/5_table_reader_pme.PNG)
  
  Yang Kedua Kita Arahkan Path ke table ss13hme
  
  ![enter image description here](Dokumentasi/6_table_reader_hme.PNG)
  
  Selanjutnya kita Tambahkan 2 Table Creator
  
  ![enter image description here](Dokumentasi7_table_creator.PNG)
  
  Yang Pertama Kita membuat table dengan nama 05111740000055_ss13pme
  
  ![enter image description here](Dokumentasi/8_table_creator_pme.PNG)
  
  Yang Kedua Kita membuat table dengan nama 05111740000055_ss13hme
  
  ![enter image description here](Dokumentasi/9_table_creator_hme.PNG)
  
  Selanjutnya pada dbloader pertama kita setting table ke 05111740000055_ss13pme
  
  ![enter image description here](Dokumentasi/11_dbloader_pme.PNG)
  
  Selanjutnya pada dbloader pertama kita setting table ke 05111740000055_ss13hme
  
  ![enter image description here](Dokumentasi/12_dbloader_hme.PNG)
  
  Selanjutnya pada Big Data environtment, Kita pilih hive connection, lalu kita copy portnya
  
  ![enter image description here](Dokumentasi/13_hive_connection.PNG)
  
  Selanjutnya kita buka Dbeaver, lalu kita pilih Apache Hive
  
  ![enter image description here](Dokumentasi/14_dbeaver_hive.PNG)
  
  Lalu kita ubah portnya sama seperti yang di Big data environtment tadi
  
  ![enter image description here](Dokumentasi/15_dbeaver_hive_connection.PNG)
  
  Untuk mengetest Kedua table tersebut kita bisa menggunakan query dalam dbeaver seperti 2 gambar dibawah ini
  
  ![enter image description here](Dokumentasi/16_dbeaver_hive_pme_test.PNG)
  
  ![enter image description here](Dokumentasi/17_dbeaver_hive_hme_test.PNG)
  
