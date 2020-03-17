# 01_DB_Connect Exercise
  
  Deskripsi:
  
  ![enter image description here](Dokumentasi/0_DB_Connect_Exercise.PNG)
  
  Membuka SQLite menggunakan Sofware Dbeaver. Arahkan path JDBC ke knime-workspace yang kita gunakan
  
  ![enter image description here](Dokumentasi/1_Dbeaver_JDBC_URL.PNG)
  
  Mengubah nama setiap table menggunakan prefix NRP sebagai ketentuan tugas
  
  ![enter image description here](Dokumentasi/2_Rename_table_prefix_nrp.PNG)
  
  Lalu pada SQLite Connector, kita ubah konfigurasinya
  
  ![enter image description here](Dokumentasi/3_workflow_db_connect.PNG)
  
  Konfigurasi SQLite Connector kita sesuaikan path dari prject knimenya dengan nama newCensus.sqlite yang terdapat dalam path knime workspace
  
  ![enter image description here](Dokumentasi/4_sqllite_connector.PNG)
  
  konfigurasi path kita sesuaikan
  
  ![enter image description here](Dokumentasi/5_path_sqlite_connect.PNG)
  
  Selanjutnya table selector
  
  ![enter image description here](Dokumentasi/6_db_table_selector.PNG)
  
  Untuk table kita pilih ss13pme sesuai dengan instruksi exercise
  
  ![enter image description here](Dokumentasi/7_select_table.PNG)
  
  Setelah dipilih table, selanjutnya kita execute project nya
  
  ![enter image description here](Dokumentasi/8_execute_all.PNG)
  
  lalu jika kita view table maka hasilnya seperti ini
  
  ![enter image description here](Dokumentasi/9_data_table.PNG)
  
