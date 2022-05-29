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



