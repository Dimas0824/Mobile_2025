# <p align="center">LAPORAN PRAKTIKUM PEMROGRAMAN MOBILE</p>

<br>

<p align="center">
    <img src="https://static.wikia.nocookie.net/logopedia/images/8/8a/Politeknik_Negeri_Malang.png/revision/latest?cb=20190922202558" width="200">
</p>

<br>

<table align="center">
    <tr>
        <td><strong>Nama</strong></td>
        <td>: Muhammad Irsyad Dimas Abdillah</td>
    </tr>
    <tr>
        <td><strong>Absen</strong></td>
        <td>: 20</td>
    </tr>
    <tr>
        <td><strong>NIM</strong></td>
        <td>: 2341720088</td>
    </tr>
    <tr>
        <td><strong>Prodi</strong></td>
        <td>: TEKNIK INFORMATIKA</td>
    </tr>
    <tr>
        <td><strong>Kelas</strong></td>
        <td>: 3H</td>
    </tr>
</table>

---

## Praktikum 1: Dart Streams

### Soal 1
Tambahkan nama panggilan Anda pada judul aplikasi sebagai identitas hasil pekerjaan Anda.  
Ganti warna tema aplikasi menjadi warna kesukaan Anda.  
**Jawaban:**  
![Tampilan aplikasi](img/image.png)

### Soal 2
Tambahkan 5 warna lainnya sesuai keinginan Anda pada variabel `colors`.  
**Jawaban:**  
![Tampilan warna](img/image%20copy.png)

### Soal 3
**Jelaskan fungsi keyword `yield*` pada kode tersebut!**  
`yield*` digunakan untuk mengalirkan seluruh data dari stream lain ke stream utama, yaitu `getColors()`.

**Apa maksud isi perintah kode tersebut?**  
Perintah tersebut membuat sebuah stream yang menghasilkan warna secara periodik setiap satu detik. Setiap kali timer berjalan, warna diambil dari daftar `colors` berdasarkan indeks yang dihitung dengan operasi modulo terhadap jumlah warna dalam daftar.

### Soal 4
Capture hasil praktikum Anda berupa GIF dan lampirkan di README.  
![Hasil praktikum](img/p1s4.gif)

### Soal 5
**Jelaskan perbedaan menggunakan `listen` dan `await for` (langkah 9)!**  
`await for` membaca stream secara berurutan dan menunggu hingga selesai, sedangkan `listen` menjalankan callback setiap data baru muncul tanpa menunggu stream berakhir.

