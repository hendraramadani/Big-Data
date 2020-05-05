# Tugas 5
#### Hendra Ramadani (05111740000055)

# Create Apache Spark Cluster Menggunakan Docker

## 2 Worker, 2 CPU Cores

### Step 1: Membuat Apache Spark Cluster

 1.  Buat folder baru bernama `spark`
 2. Download file docker compose dari: [https://raw.githubusercontent.com/bitnami/bitnami-docker-spark/master/docker-compose.yml](https://raw.githubusercontent.com/bitnami/bitnami-docker-spark/master/docker-compose.yml)
 3. Simpan dengan nama docker-compose.yml. Letakkan file yang telah di-download ke dalam folder spark.

Edit docker-compose.yml seperti gambar berikut.
![enter image description here](https://github.com/hendraramadani/Big-Data/blob/master/Tugas%205/Dokumentasi/22/docker_compose_22.PNG)
Untuk menggunakan 2 CPU Core, isi **SPARK_WOKER_CORES=2**.
Lalu jalankan script yml tersebut menggunakan command

    docker-compose up

Jika docker compose belum terinstall, maka kunjungi link berikut: [https://docs.docker.com/compose/install/](https://docs.docker.com/compose/install/).

![enter image description here](https://github.com/hendraramadani/Big-Data/blob/master/Tugas%205/Dokumentasi/22/docker_up_22.PNG)
Ketika proses selesai, maka buka terminal baru, dan ketikkan command

    docker ps

untuk mengecek proses apa saja yang berjalan pada docker.

![enter image description here](https://github.com/hendraramadani/Big-Data/blob/master/Tugas%205/Dokumentasi/22/docker_ps_22.PNG)
Lalu, tes spark cluster menggunakan web UI di port 8080 ([http://localhost:8080](http://localhost:8080)).

![enter image description here](https://github.com/hendraramadani/Big-Data/blob/master/Tugas%205/Dokumentasi/22/docker_spark_execution_time_22.PNG)

### Step 2: Menjalankan Script Python di Dalam Apache Spark Cluster

1. Buka cmd dan cek apa saja container yang sedang berjalan dengan command `docker ps`

![enter image description here](https://github.com/hendraramadani/Big-Data/blob/master/Tugas%205/Dokumentasi/22/docker_ps_22.PNG)
Perhatikan container ID dari spark_spark_1. Kita akan masuk ke dalam container tersebut dan menjalankan spark-submit.

2.  Masuklah ke dalam container dan mengeksekusi bash dengan menggunakan command `docker exec -it <container_id> /bin/bash`, lalu Cek alamat IP dengan menggunakan perintah `hostname -i`.

![enter image description here](https://github.com/hendraramadani/Big-Data/blob/master/Tugas%205/Dokumentasi/22/docker_hostname_22.PNG)

3.  Untuk melakukan submit job, Apache Spark menyediakan command spark-submit. Saat melakukan submit job ke cluster, kita perlu mendefinisikan hal-hal berikut:
    

-   Alamat master node
    
-   Script atau kelas yang akan dijalankan
    
-   Data/file (apabila ada)

#### 100 Partisi 
Jalankan perintah berikut untuk submit job menghitung nilai Pi. Script contoh ini telah disediakan oleh Apache Spark.

    spark-submit --master spark://172.19.0.4:7077  examples/src/main/python/pi.py  100

Angka 100 menandakan akan menjalankan 100 partisi. 

![enter image description here](https://github.com/hendraramadani/Big-Data/blob/master/Tugas%205/Dokumentasi/22/docker_spark_partition_100.PNG)

#### 1000 Partisi 

Untuk menjalankan 1000 partisi, tinggal ganti saja parameternya menjadi 1000

    spark-submit --master spark://172.19.0.4:7077  examples/src/main/python/pi.py  1000

![enter image description here](https://github.com/hendraramadani/Big-Data/blob/master/Tugas%205/Dokumentasi/22/docker_spark_partition_1000.PNG)
Setelah kedua proses tersebut selesai, kita bisa mengecek laporan prosesnya di `localhost:8080`.

![enter image description here](https://github.com/hendraramadani/Big-Data/blob/master/Tugas%205/Dokumentasi/22/docker_spark_execution_time_22.PNG)
**Keterangan**:
Script pi.py adalah script yang berisi program untuk menghitung estimasi nilai pi. Dalam kasus ini, kita menggunakan parameter 100 dan 1000. Yang artinya adalah proses perhitungan/perulangan dipecah menjadi 100 bagian (100 job) dan 1000 job. Job-job inilah yang akan dijalankan oleh worker.

Untuk menjalankan 1000 partisi dibutuhkan waktu selama **1.6 menit**. Sedangkan untuk menjalankan 100 partisi hanya dibutuhkan **22 detik saja**.

Ketika semua proses telah selesai, kita bisa ketik **exit** pada terminal yang digunakan untuk menjalankan script python. Lalu tekan **Ctrl + C** pada terminal yang menjalankan Spark Worker.


## 2 Worker, 4 CPU Cores

Langkah-langkahnya mirip seperti sebelumnya, kita hanya perlu mengganti **SPARK_WOKER_CORES=4**.

![enter image description here](https://github.com/hendraramadani/Big-Data/blob/master/Tugas%205/Dokumentasi/24/docker_compose_24.PNG)
Lalu jalankan command `docker-compose up` dan tunggu prosesnya sampai selesai. 

Lalu, cek perubahan Cores spark cluster menggunakan web UI di port 8080 ([http://localhost:8080](http://localhost:8080))

![enter image description here](https://github.com/hendraramadani/Big-Data/blob/master/Tugas%205/Dokumentasi/24/docker_spark_24.PNG)

Setelah itu, buka terminal baru untuk masuk ke dalam container dengan command `docker exec -it <container_id> /bin/bash`.

#### 100 Partisi 
Setelah itu, jalankan command berikut untuk menjalankan Spark Submit ke Spark Worker.

    spark-submit --master spark://172.19.0.5:7077  examples/src/main/python/pi.py  100

![enter image description here](https://github.com/hendraramadani/Big-Data/blob/master/Tugas%205/Dokumentasi/24/docker_spark_partition_100_24.PNG)

#### 1000 Partisi 

Ubah parameternya menjadi 1000.

        spark-submit --master spark://172.19.0.5:7077  examples/src/main/python/pi.py  1000

![enter image description here](https://github.com/hendraramadani/Big-Data/blob/master/Tugas%205/Dokumentasi/24/docker_spark_partition_1000_24.PNG)
Setelah itu, kita cek hasil prosesnya di `localhost:8080`.

![enter image description here](https://github.com/hendraramadani/Big-Data/blob/master/Tugas%205/Dokumentasi/24/docker_spark_execution_time_24.PNG)
Untuk menjalankan 100 partisi, dibutuhkan waktu **18 detik**. Sedangkan untuk 1000 partisi diperlukan waktu **1.6 menit**.

## 5 Worker, 2 CPU Cores

Langkah-langkahnya mirip seperti sebelumnya, kita hanya perlu menambahkan worker sebanyak 5 dan mengganti **SPARK_WOKER_CORES=2**.

![enter image description here](https://github.com/hendraramadani/Big-Data/blob/master/Tugas%205/Dokumentasi/52/docker_compose_52.PNG)
Lalu jalankan command `docker-compose up` dan tunggu prosesnya sampai selesai. 

Lalu, cek pertambahan Worker dan perubahan Cores spark cluster menggunakan web UI di port 8080 ([http://localhost:8080](http://localhost:8080))

![enter image description here](https://github.com/hendraramadani/Big-Data/blob/master/Tugas%205/Dokumentasi/52/docker_spark_52.PNG)

Setelah itu, buka terminal baru untuk masuk ke dalam container dengan command `docker exec -it <container_id> /bin/bash`.

#### 100 Partisi 
Setelah itu, jalankan command berikut untuk menjalankan Spark Submit ke Spark Worker.

    spark-submit --master spark://172.19.0.2:7077  examples/src/main/python/pi.py  100

![enter image description here](https://github.com/hendraramadani/Big-Data/blob/master/Tugas%205/Dokumentasi/52/docker_spark_partition_100_52.PNG)

#### 1000 Partisi 

Ubah parameternya menjadi 1000.

    spark-submit --master spark://172.19.0.2:7077  examples/src/main/python/pi.py  1000

![enter image description here](https://github.com/hendraramadani/Big-Data/blob/master/Tugas%205/Dokumentasi/52/docker_spark_partition_1000_52.PNG)
Setelah itu, kita cek hasil prosesnya di `localhost:8080`.

![enter image description here](https://github.com/hendraramadani/Big-Data/blob/master/Tugas%205/Dokumentasi/52/docker_spark_execution_time.PNG)
Untuk menjalankan 100 partisi dibutuhkan waktu **1.2 menit**. Sedangkan untuk 1000 partisi diperlukan waktu **1 menit**, disini saya kurang mengerti kenapa 100 partisi lebih lama daripada 1000 partisi, apa mungkin karena performa PC saya lagi menurun atau Processor sedang dalam High Load.

## 5 Worker, 4 CPU Cores

Langkah-langkahnya mirip seperti sebelumnya, kita hanya perlu mengganti **SPARK_WOKER_CORES=4**.

![enter image description here](https://github.com/hendraramadani/Big-Data/blob/master/Tugas%205/Dokumentasi/54/docker_compose_54.PNG)
Lalu jalankan command `docker-compose up` dan tunggu prosesnya sampai selesai. 

Lalu, cek perubahan Cores spark cluster menggunakan web UI di port 8080 ([http://localhost:8080](http://localhost:8080))

![enter image description here](https://github.com/hendraramadani/Big-Data/blob/master/Tugas%205/Dokumentasi/54/docker_spark_54.PNG)

Setelah itu, buka terminal baru untuk masuk ke dalam container dengan command `docker exec -it <container_id> /bin/bash`.

#### 100 Partisi 
Setelah itu, jalankan command berikut untuk menjalankan Spark Submit ke Spark Worker.

    spark-submit --master spark://172.19.0.2:7077  examples/src/main/python/pi.py  100

![enter image description here](https://github.com/hendraramadani/Big-Data/blob/master/Tugas%205/Dokumentasi/54/docker_spark_partition_100_54.PNG)

#### 1000 Partisi 

Ubah parameternya menjadi 1000.

    spark-submit --master spark://172.19.0.2:7077  examples/src/main/python/pi.py  1000

![enter image description here](https://github.com/hendraramadani/Big-Data/blob/master/Tugas%205/Dokumentasi/54/docker_spark_partition_1000_54.PNG)
Setelah itu, kita cek hasil prosesnya di `localhost:8080`.

![enter image description here](https://github.com/hendraramadani/Big-Data/blob/master/Tugas%205/Dokumentasi/54/docker_spark_execution_time.PNG)
Untuk menjalankan 100 partisi, dibutuhkan waktu **31 detik**. Sedangkan untuk 1000 partisi diperlukan waktu **57 detik**.

## Kesimpulan
Semakin banyak Job (Partisi) yang digunakan, maka proses overhead dari map-reduce akan semakin lama, berbanding lurus dengan banyak worker yang digunakan. Penggunaan Cores yang tinggi pada setiap worker akan mempercepat setiap komputasi yang dijalankan maka execution time nya juga akan semakin cepat, akan tetapi berbanding lurus dengan resource yang digunakan apabila semakin cepat worker maka resource yang digunakan semakin besar (CPU,RAM,Disk Usage), begitu sebaliknya.
