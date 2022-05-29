# PRAKTIKUM PROBSTAT MODUL2 2022 KELAS A

#### Nama    : Maula Izza Azizi
#### NRP     : 5025201104
#### Kelas   : Probabilitas dan Statistik A

<br />

## PENJELASAN 
### Nomor 1 
Seorang peneliti melakukan penelitian mengenai pengaruh aktivitas 𝐴 terhadap kadar saturasi oksigen pada manusia. Peneliti tersebut mengambil sampel sebanyak 9 responden. Pertama, sebelum melakukan aktivitas 𝐴, peneliti mencatat kadar saturasi oksigen dari 9 responden tersebut. Kemudian, 9 responden tersebut diminta melakukan aktivitas 𝐴. Setelah 15 menit, peneliti tersebut mencatat kembali kadar saturasi oksigen dari 9 responden tersebut. Berikut data dari 9 responden mengenai kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas 𝐴

<img width="343" alt="Screen Shot 2022-05-29 at 20 20 51" src="https://user-images.githubusercontent.com/72302421/170870922-c3c1abdb-f2a6-446e-b2cc-a0508efe172a.png">

#### 1a
Carilah Standar Deviasi dari data selisih pasangan pengamatan tabel diatas

```
# data x
before <- c(78,75,67,77,70,72,78,74,77)
# data y
after <- c(100,95,70,90,90,90,89,90,100)

# untuk melakukan pengecekan data 
data <- data.frame(
  group <- rep(c("before", "after"), each = 9),
  saturation <- c (before, after) 
)
data

```

maka ketika kita menge-print data akan mmenghasilkan output:

<img width="778" alt="Screen Shot 2022-05-29 at 20 10 43" src="https://user-images.githubusercontent.com/72302421/170871276-b7323099-e25b-4a18-9955-3c77b8e825b8.png">

```
standarDeviasi_before <- sd(before)
```

```
standarDeviasi_after <- sd(after)
```
<img width="334" alt="Screen Shot 2022-05-29 at 20 29 51" src="https://user-images.githubusercontent.com/72302421/170871382-a4c73140-c026-4984-96ed-4f72b5de9aa3.png">

#### 1b
```
# Mencari nilai t(p-value) dengan t-test
t.test(before, after, alternative = "greater", var.equal = FALSE)
```
<img width="579" alt="Screen Shot 2022-05-29 at 20 34 10" src="https://user-images.githubusercontent.com/72302421/170871574-abf2496a-daa2-4035-8f5a-ae8a4b3966d2.png">


#### 1c
```
# 1c
var.test(before, after)
t.test(before, after, mu = 0, alternative = "two.sided", var.equal = TRUE)
```
<img width="644" alt="Screen Shot 2022-05-29 at 20 36 19" src="https://user-images.githubusercontent.com/72302421/170871690-90a5cc49-f382-4eac-b29d-2bd45704b18d.png">


### Nomor 2
Diketahui bahwa mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun. Untuk menguji klaim ini, 100 pemilik mobil yang dipilih secara acak diminta untuk mencatat jarak yang mereka tempuh. Jika sampel acak menunjukkan rata-rata 23.500 kilometer dan standar deviasi 3900 kilometer. (Kerjakan menggunakan library seperti referensi pada modul).

#### 2a
Setuju, karena uji z menolak H0, sehingga mobil yang dikemudikan rata-rata per tahun lebih dari 20000 kilometer
#### 2b
Output dari z test adalah hipotesis alternatif
alternative hypothesis adalah nilai benar mean yaitu lebih dari 20000 atau H1 diterima sehingga klaim benar.
#### 2c
P-value dari uji tes z adalah 2.2e-16 atau mendekati 0, dari hasil p-value tersebut hipotesis awal dapat ditolak dan H1 diterima.


### Nomor 3

#### 3a
H0 : mu = mu0,mu tidak sama dengan mu0
#### 3b
```
tsum.test(mean.x=3.64, s.x = 1.67, n.x = 19, 
          mean.y =2.79 , s.y = 1.32, n.y = 27, 
          alternative = "greater", var.equal = TRUE)
```
#### 3c
```
install.packages("mosaic")
library(mosaic)
plotDist(dist='t', df=2, col="blue")
```
<img width="648" alt="Screen Shot 2022-05-29 at 21 22 13" src="https://user-images.githubusercontent.com/72302421/170874050-5b7b2d29-2788-4126-8901-061db2b5b2a7.png">

#### 3d
```
# Nilai Kritikal
qchisq(p = 0.05, df = 2, lower.tail=FALSE)
```
<img width="128" alt="Screen Shot 2022-05-29 at 21 27 08" src="https://user-images.githubusercontent.com/72302421/170874318-1a1a11d4-8b41-412e-a6d0-03034a3da617.png">

#### 3e
Keputusan

Teori keputusan adalah teori formal pengambilan keputusan di bawah ketidakpastian. 
Aksinya adalah : `({a}_{a∈A})`
Kemungkinan konsekuensi : `({c}_{c∈C})` (tergantung pada keadaan dan tindakan)
Maka keputusan dapat dibuat dengan `t.test`

#### 3f
Kesimpulan
Kesimpulan yang didapatkan yaitu perbedaan rata-rata yang terjadi tidak ada jika dilihat dari uji statistik dan akan ada tetapi tidak signifikan jika dipengaruhi nilai kritikal.

### Nomor 4

### Nomor 5


