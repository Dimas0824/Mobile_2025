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
Tambahan nama panggilan anda pada title app sebagai identitas hasil perkerjaan anda. <br>
Ganti warna tema app menjadi warna kesukaan anda. <br>
jawaban: 
![alt text](img/image.png)

### Soal 2
Tambahkan 5 warna lainnya sesuai keinginan Anda pada variabel colors tersebut. <br>
jawaban: 
![alt text](<img/image copy.png>)

### Soal 3
Jelaskan fungsi keyword yield* pada kode tersebut!
jawaban: yield* dalam kode tersebut digunakan untuk mengembalikan atau mengalirkan semua data dari stream ke stream utama yaitu getColors().

Apa maksud isi perintah kode tersebut?
jawaban:  Perintah kode tersebut membuat sebuah stream yang menghasilkan warna secara periodik setiap satu detik. Setiap kali timer berjalan, warna yang dihasilkan diambil dari daftar colors berdasarkan indeks yang dihitung dengan operasi modulo terhadap jumlah warna dalam daftar tersebut.