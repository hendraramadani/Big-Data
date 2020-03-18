# 02_Hive_WritingToDB Exercise
  
  Deskripsi:
  
  ![enter image description here](Dokumentasi/0_deskripsi.PNG)
  
  Workflownya Kurang Lebih Seperti ini
  
  ![enter image description here](Dokumentasi/1_workflow.PNG)
  
  Part yang sama dari Workflow pada excercise 1
  
  ![enter image description here](Dokumentasi/2_sameflow.PNG)
  
  Kita tambahkan concenate untuk menggabungkan data dari output dbreader pertama dan data dari output decision tree predictor
  
  ![enter image description here](Dokumentasi/3_concatenate.PNG)
  
  Lalu kita tambahkan table creator
  
  ![enter image description here](Dokumentasi/4_table_creator.PNG)
  
  Selanjutnya kita Konfigurasi table Creator dengan table nema 05111740000055_decision_tree_result_table
  
  ![enter image description here](Dokumentasi/5_table_creator_setting.PNG)
  
  lalu kita tambahkan dbloader
  
  ![enter image description here](Dokumentasi/6_db_loader.PNG)
  
  Konfigurasi DBloader kita pilih table sesuai dengan nama table yang kita buat tadi di table creator
  
  ![enter image description here](Dokumentasi/7_db_loader_setting.PNG)
  
  Hasilnya dapat kita lihat dengan mengquery Dbeaver sama seperti gambar dibawah
  
  ![enter image description here](Dokumentasi/8_dbeaver_result.PNG)
  
  
