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

## Praktikum 1: Konversi Dart model ke JSON

### Soal 1
Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda. <br>
jawaban:
```dart
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Irsyad Dimas - Flutter JSON Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(),
    );
  }
}
```

Gantilah warna tema aplikasi sesuai kesukaan Anda. <br>
jawaban:
```dart
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Irsyad Dimas - Flutter JSON Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blueGrey,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),

      home: const MyHomePage(),
    );
  }
}
```

### Soal 2
Masukkan hasil capture layar ke laporan praktikum Anda. <br>
jawaban:
![alt text](img/Code_qaPeK0P2fq.gif)

### Soal 3
Masukkan hasil capture layar ke laporan praktikum Anda. <br>
jawaban:
![alt text](img/image.png)

#### Langkah 25
![alt text](img/image1.png)

## Praktikum 2: Handle kompatibilitas data JSON

#### Langkah 9
![alt text](<img/image copy.png>)

### Soal 4
Capture hasil running aplikasi Anda, kemudian impor ke laporan praktikum Anda!
jawaban:
![alt text](<img/image copy 2.png>)

## Praktikum 3: Menangani error JSON
### Soal 5
Jelaskan maksud kode lebih safe dan maintainable!
jawaban:
Kode yang lebih safe dan maintainable berarti kode tersebut dirancang untuk mengurangi risiko kesalahan (error) selama eksekusi dan memudahkan pemeliharaan di masa depan. Kode yang aman (safe) biasanya mencakup penanganan error yang baik, validasi input, dan penggunaan tipe data yang tepat untuk menghindari crash atau perilaku tak terduga. Kode yang mudah dipelihara (maintainable) berarti kode tersebut ditulis dengan cara yang jelas, terstruktur, dan terdokumentasi dengan baik, sehingga memudahkan pengembang lain (atau diri sendiri di masa depan) untuk memahami, memperbaiki, atau mengembangkan kode tersebut tanpa kesulitan.

Hasil capture layar aplikasi:
![alt text](<img/image copy 3.png>)

## Praktikum 4: SharedPreferences
di record tidak terlihat karena hanya merekam bagian browser saja, angka pada counter bertambah saat tombol restart app di klik, sedangkan jika refresh halaman counter akan tetap menampilkan nilai terakhir sebelum di refresh.

![alt text](img/chrome_LZKXGEQOAn.gif)

### Soal 6
Capture hasil praktikum Anda berupa GIF dan lampirkan di README.
jawaban: 
```dart
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shared Preferences - Dimas'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You have opened the app $appCounter times.',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                deletePreferece();
              },
              child: const Text('Reset counter'),
            ),
          ],
        ),
      ),
    );
  }
```
Hasil capture layar aplikasi:
![alt text](img/chrome_XGHAvfYhr5.gif)

## Praktikum 5: Akses filesystem dengan path_provider

### Soal 7
Capture hasil praktikum Anda dan lampirkan di README.
jawaban:
![alt text](<img/image copy 4.png>)