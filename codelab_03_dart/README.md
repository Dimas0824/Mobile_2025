# <p align="center">LAPORAN PRAKTIKUM PEMROGRAMAN MOBILE</p>

<br><br>

<p align="center">
    <img src="https://static.wikia.nocookie.net/logopedia/images/8/8a/Politeknik_Negeri_Malang.png/revision/latest?cb=20190922202558" width="33%">
</p>

<br><br>

<p align="center">Nama  : Muhammad Irsyad Dimas Abdillah</p>
<p align="center">Absen : 20</p>
<p align="center">NIM   : 2341720088</p>
<p align="center">Prodi : TEKNIK INFORMATIKA</p>
<p align="center">Kelas : 3H</p>

---

# Praktikum 1

## Langkah 1:
Salin kode program berikut ke dalam fungsi main():

```dart
String test = "test2";
if (test == "test1") {
   print("Test1");
} else If (test == "test2") {
   print("Test2");
} Else {
   print("Something else");
}

if (test == "test2") print("Test2 again");
```

## Langkah 2
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! <br>
jawab: 
  * variabel test akan bernilai "test2"
  * Kondisi pertama (if (test == "test1")) false, jadi dilewati.
  * Kondisi kedua (else if (test == "test2")) true, maka mencetak "Test2".
  * Bagian else tidak dijalankan karena salah satu kondisi sudah terpenuhi.
  * Kondisi terakhir (if (test == "test2") print("Test2 again");) juga true, sehingga mencetak "Test2 again".<br>
  
Output:  
![alt text](img\P1L1.png)

## Langkah 3
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda. <br>

```dart
String test = "true";
if (test) {
   print("Kebenaran");
}
```
Output:
![alt text](img\P1L3)

