# 02_DB_inDB_Processing Exercise
  
  Deskripsi:
  
  Terdapat 5 problem yang harus dikerjakan dalam satu workflow
  
  ![enter image description here](Dokumentasi/0_deskripsi.PNG)
  
  Kurang lebih workflow utamanya seperti ini
  
  ![enter image description here](Dokumentasi/1_workflow.PNG)
  
## Preparation

  Untuk persiapan data yang akan kita gunanakan, menggunakan 2 table selector yang pertama untuk table 05111740000055_ss13hme dan table 05111740000055_ss13pme
  
  ![enter image description here](Dokumentasi/2_preparation.PNG)
  
  Konfigurasi untuk table selector 05111740000055_ss13hme
  
  ![enter image description here](Dokumentasi/3_preparation_hme.PNG)
  
  Konfigurasi untuk table selector 05111740000055_ss13pme
  
  ![enter image description here](Dokumentasi/4_preparation_pme.PNG)
  
## Problem 1 : join ss13hme and ss13pme on SERIALNO. Remove all columns named PUMA* and PWGTP* from both tables.

  Untuk workflownya kurang lebih seperti itu
  
  ![enter image description here](Dokumentasi/5_problem1.png)
  
  Selanjutnya kita filter kolom dengan prefix PUMA* dan PWGTP* untuk dihilangkan
  
  ![enter image description here](Dokumentasi/6_puma_pwgtp_filter.PNG)
  
  Selanjutnya kita join kedua table tersebut
  
  ![enter image description here](Dokumentasi/7_join_setting.PNG)
  
  Data table view setelah kita join kedua table
  
  ![enter image description here](Dokumentasi/8_problem1_result.PNG)
  
## Problem 2 : filter all rows from ss13pme where COW is NULL.

  Workflownya kurag lebih seperti ini
  
  ![enter image description here](Dokumentasi/9_problem2.png)
  
  Lalu kita filter semua row pada kolom Cow yang NULL
  
  ![enter image description here](Dokumentasi/10_cow_is_null.PNG)
  
  Hasil dari filter pada problem 2
  
  ![enter image description here](Dokumentasi/11_result_problem2.PNG)
  
## Problem 3 : filter all rows from ss13pme where COW is NOT NULL.

  Workflow nya kurang lebih seperti ini
  
  ![enter image description here](Dokumentasi/12_problem3.png)
  
  Untuk filter semua row pada kolom Cow yang tidak NULL
  
  ![enter image description here](Dokumentasi/13_cow_not_null_filter.PNG)
  
  Hasli filter dari Problem 3
  
  ![enter image description here](Dokumentasi/14_result_problem3.PNG)
  
## Problem 4 : calculate average AGEP for the different SEX groups.

  Kurang Lebih workflownya seperti ini
  
  ![enter image description here](Dokumentasi/15_problem4.png)
  
  selanjutnya kita tambahkan GroupBy berdasarkan Sex
  
  ![enter image description here](Dokumentasi/16_group_by_sex.PNG)
  
  Selanjutnya kita tambah agregasi AVG untuk kolom Agep lalu apply
  
  ![enter image description here](Dokumentasi/17_manual_agregation.PNG)
  
  Hasil data table Problem 4 setelah kita view
  
  ![enter image description here](Dokumentasi/18_result_problem4.PNG)
  
## Problem 5 : Optional. Sort the data rows by descending AGEP and extract top 10 only. Hint: Use LIMIT to restrict the number of rows returned by the db.

  Kurang Lebih workflownya seperti ini
  
  ![enter image description here](Dokumentasi/19_problem5.png)
  
  Lalu kita Sort Descending Berdasarkan Kolom Agep
  
  ![enter image description here](Dokumentasi/20_agep_desc.PNG)
  
  Setelah itu kita tambahkan Query, untuk mendapatkan data sort sebanyak 10 baris dengan menggunakan Limit 10
  
  ![enter image description here](Dokumentasi/21_limit_10.PNG)
  
  Hasilnya akan seperti ini
  
  ![enter image description here](Dokumentasi/22_result_problem5.PNG)
  
  
