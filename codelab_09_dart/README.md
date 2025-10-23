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

## Praktikum 1: Mengambil Foto dengan Kamera di Flutter

Hasil Build Apk:

![alt text](img/image.png)

## Praktikum 2: Membuat photo filter carousel

Output:

![alt text](<img/Praktikum 2.gif>)

## TUGAS

2. Gabungkan hasil praktikum 1 dengan hasil praktikum 2 sehingga setelah melakukan pengambilan foto, dapat dibuat filter carouselnya! <br>
![alt text](img/gabungan_kamera&filter.gif)

3. Jelaskan maksud void async pada praktikum 1?<br>
jawab: void async pada main praktikum 1 berfungsi agar bisa menjalankan proses lain yang butuh waktu lebih lama (memerlukan buka kamera) tanpa menutupi atau menghambat proses lain yang sedang berjalan. Ini memungkinkan pakai await agar proses selesai dulu sebelum lanjut ke langkah berikutnya.

4. Jelaskan fungsi dari anotasi @immutable dan @override ?<br>
jawab: 
    a. @immutable: Menandakan bahwa sebuah class tidak boleh diubah setelah dibuat. Semua properti dalam class tersebut harus final. Digunakan untuk menjaga konsistensi data dan mencegah perubahan tak disengaja.
    b. @override: Digunakan saat kita ingin menimpa (mengubah) method atau properti dari superclass. Ini memberi tahu compiler bahwa kita sengaja mengganti implementasi bawaan.


