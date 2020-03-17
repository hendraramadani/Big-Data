# 03_DB_Modelling Exercise
  
  Deskripsi:
  
  ![enter image description here](Dokumentasi/0_deskripsi.PNG)
  
  Untuk Main Workflownya kurang lebih seperti ini
  
  ![enter image description here](Dokumentasi/1_workflow.PNG)
  
### Preparation
  
  ![enter image description here](Dokumentasi/data_preparation.PNG)
  
  Database kita konekkan sama seperti excercise 1, lalu kita lanjut pada table selector
  
  ![enter image description here](Dokumentasi/db_select.PNG)
  
  Untuk konfigurasi pada table selector, kita pilih tablenya 05111740000055_ss13pme
  
  ![enter image description here](Dokumentasi/db_select_option.PNG)
  
  Selanjutnya kita tambahkan kolom filter
  
  ![enter image description here](Dokumentasi/2_remove.PNG)
  
  Konfigurasi untuk kolom filter yang mempunyai prefix name PUMA* dan PWGTP* kita hilangkan (exclude)
  
  ![enter image description here](Dokumentasi/3_rm_puma_pwgtp.PNG)
  
### Process Modelling
  
  Selanjutnya kita tambahkan 2 row filter untuk kolom cow, untuk Cow is Not NULL dan Cow is NULL
  
  ![enter image description here](Dokumentasi/4_cow_filter.PNG
  
  Konfigurasi Row Filter untuk Cow is Not NULL
  
  ![enter image description here](Dokumentasi/5_cow_not_null.PNG)
  
  Konfigurasi Row Filter untuk Cow is NULL
  
  ![enter image description here](Dokumentasi/6_cow_null.PNG)
  
  Lalu setelah Row Filter Cow is NULL, kita tambahkan kolom filter untuk mangapus kolom cow
  
  ![enter image description here](Dokumentasi/7_remove_coll_cow.PNG)
  
  Setelah Row Filter Cow is Not NULL kita rubah kolom cow yang semula integer type ke dalam string type
  
  ![enter image description here](Dokumentasi/8_int_to_str.PNG)
  
  Selanjutnya pada Decision Tree Learner
  
  ![enter image description here](Dokumentasi/9_DescisionTree_learner.PNG)
  
  Konfigurasinya Seperti ini Class Kolom yang digunakan adalah kolom cow
  
  ![enter image description here](Dokumentasi/10_DTL_option.PNG)
  
  Hasil dari decision tree learner akan seperti ini
  
  ![enter image description here](Dokumentasi/13_result_DTL.PNG)
  
  Selanjutnya kita tambahkan Decision Tree predictor untuk memprediksi kolom yang akan diprediksi yaitu kolom cow
  
  ![enter image description here](Dokumentasi/11_DTP.PNG)
  
  Konfigurasinya Seperti ini
  
  ![enter image description here](Dokumentasi/12_DTP_option.PNG)
  
  Decision Tree Viewnya akan seperti ini
  
  ![enter image description here](Dokumentasi/14_result_DTP.PNG)
  
  Untuk kolom Cow setelah di diprediksi untuk setiap rownya, hasilnya seperti ini
  
  ![enter image description here](Dokumentasi/table_predict.PNG)
  
  
