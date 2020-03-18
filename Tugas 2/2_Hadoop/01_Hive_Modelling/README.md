# 01_Hive_Modelling Exercise
  
  Deskripsi:
  
  ![enter image description here](Dokumentasi/0_deskripsi.PNG)
  
  Workflownya kurang lebih seperti ini
  
  ![enter image description here](Dokumentasi/1_workflow.PNG)
  
### Preparation
  
  ![enter image description here](Dokumentasi/2_preparation.PNG)
  
  Merupakan Option dari Big Data Environtment
  
  ![enter image description here](Dokumentasi/3_BD_environtment_setting.PNG)
  
  Memilih Table yang akan digunakan 05111740000055_ss13pme
  
  ![enter image description here](Dokumentasi/3_DB_select_setting.PNG)
  
  Memfilter kolom dalam name yang memunyai prefix name PUMA* dan PWGTP* dan akan dihilangkan
  
  ![enter image description here](Dokumentasi/4_DB_filter.PNG)
  
### Modelling

  Kita tambahkan 2 Row Filter, untuk memfilter Row COW is NULL dan COW is Not NULL
  
  ![enter image description here](Dokumentasi/5_cow_filter.PNG)
  
  Konfigurasi dari Row FIlter Untuk Cow is NOT NULL
  
  ![enter image description here](Dokumentasi/6_cow_filter_not_null.PNG	)
  
  Konfigurasi dari Row FIlter Untuk Cow is NULL
  
  ![enter image description here](Dokumentasi/7_cow_filter_null.PNG)
  
  Selanjutnya setelah Row FIlter Cow is NULL kita Tambahkan Kolom Filter untuk menghilangkan Kolom Cow
  
  ![enter image description here](Dokumentasi/8_cow_delete.PNG)
  
  Selanjutnya setelah Row Filter Cow is NOT NULL kita merubah kolom cow yang awalnya integer type kita rubah ke string type
  
  ![enter image description here](Dokumentasi/9_number_to_string.PNG)
  
  Tambahkan Decision Tree Learner setelah step diatas
  
  ![enter image description here](Dokumentasi/10_DT_learner.PNG)
  
  Konfigurasi dati Decision Tree Learner
  
  ![enter image description here](Dokumentasi/11_DT_learner_setting.PNG)
  
  Hasil dari Decision Tree Learner view 
  
  ![enter image description here](Dokumentasi/12_DT_learner_result.PNG)
  
  Step Terakhir kita Tambahkan Decision Predictor
  
  ![enter image description here](Dokumentasi/13_DT_predictor.PNG)
  
  Konfigurasi dari Decision Tree Predictor
  
  ![enter image description here](Dokumentasi/15_DT_Predictor_setting.PNG)
  
  Hasil dari Decision Tree Predictor view 
  
  ![enter image description here](Dokumentasi/16_DT_predictor_result.PNG)
  
  Table View dari decision tree predictor, dan mengubah data kolom Cow semuanya sesuai dengan Data dari Decision Tree Predictor
  
  ![enter image description here](Dokumentasi/table_predict.PNG)
  
