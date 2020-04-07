# Movie Recommendations with Spark Collaborative Filtering
Dokumentasi resmi KNIME : [Link here](https://www.knime.com/blog/movie-recommendations-with-spark-collaborative-filtering)

## 1. Overview


## 2. Crisp-DM Documentation

### - Business Understanding


### - Data Understanding


### - Data Preparation


### - Modelling


### - Evaluation


### - Deployment

## 3. Perbandingan File Reader dan CSV to Spark 
    Untuk membandingan kecepatan antara File Reader dan CSV to Spark pada knime kita membutuhkan tambahan komponen yaitu Timer info dan kita harus menggunakan dataset yang sama. Timer info ini berfungsi untuk melihat semua time execution pada Knime Workflow menggunakan variable plots, untuk implementasinya seperti ini

    - File Reader

    ![Knime Workflow](Dokumentasi/filereader.png)

    Setting dataset menggunakan rating.csv

    ![Knime Workflow](Dokumentasi/filereader_option.png)

    - CSV to Spark

    ![Knime Workflow](Dokumentasi/csvtospark.png)

    Setting dataset menggunakan rating.csv

    ![Knime Workflow](Dokumentasi/csvtospark_option.png)

    
    Untuk hasil perbandingannya kita dapat melihat di Output Table pada Timer Info

    ![Knime Workflow](Dokumentasi/hasilperbandingan.png)

    Dari hasil tersebut maka dapat kita mendapatkan data execution time :
    - File Reader : 96558 milisecond = 96.6 second
    - Csv to Spark : 26777 milisecond = 26.8 second

    Maka dapat disimpulkan bahwa CSV to Spark lebih cepat waktu execution timenya dibandingkan dengan File Reader untuk case dataset rating.csv


