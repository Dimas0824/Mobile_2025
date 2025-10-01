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

## Praktikum 1: Membangun Layout di Flutter

### Code:
```dart
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Langkah 4: Implementasi title row
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /* soal 1 - Expanded agar Column menyesuaikan ruang tersisa */
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /* soal 2 - Baris pertama teks dengan padding */
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Gunung di Batu',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(color: Colors.grey[500]),
                ),
              ],
            ),
          ),
          /* soal 3 - Icon bintang merah dan teks "41" */
          Icon(Icons.star, color: Colors.red[500]),
          const Text('41'),
        ],
      ),
    );
    
    return MaterialApp(
      title: 'Flutter layout: Muhammad Irsyad Dimas Abdillah dan 2341720088',
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter layout demo')),
        // Ganti body dari Center(child: Text('Hello World')) dengan titleSection
        body: Column(children: [titleSection]),
      ),
    );
  }
}
```
### Screenshot:
![alt text](img/p1.png)

## Praktikum 2: Implementasi button row
### Code:
```dart
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Langkah 4 Praktikum 1: Implementasi title row
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Gunung di Batu',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(color: Colors.grey[500]),
                ),
              ],
            ),
          ),
          Icon(Icons.star, color: Colors.red[500]),
          const Text('41'),
        ],
      ),
    );

    // Langkah 2 Praktikum 2: Buat widget buttonSection
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    return MaterialApp(
      title: 'Flutter layout: Muhammad Irsyad Dimas Abdillah dan 2341720088',
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter layout demo')),
        // Langkah 3 Praktikum 2: Tambah button section ke body
        body: Column(children: [titleSection, buttonSection]),
      ),
    );
  }

  // Langkah 1 Praktikum 2: Buat method Column _buildButtonColumn
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
```
### Screenshot:
![alt text](img/p2.png)

## Praktikum 3: Implementasi text section
### Code:
```dart
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Langkah 4 Praktikum 1: Implementasi title row
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Gunung di Batu',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(color: Colors.grey[500]),
                ),
              ],
            ),
          ),
          Icon(Icons.star, color: Colors.red[500]),
          const Text('41'),
        ],
      ),
    );

    // Langkah 2 Praktikum 2: Buat widget buttonSection
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    // Langkah 1 Praktikum 3: Buat widget textSection
    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Pemandian Banyu Biru adalah salah satu destinasi wisata alam di Pasuruan, Jawa Timur. '
        'Tempat ini terkenal dengan kolam air alami yang jernih berwarna kebiruan dan suasana yang asri. '
        'Pengunjung dapat menikmati kesegaran air, berenang, dan bersantai di tengah pepohonan rindang. '
        'Pemandian Banyu Biru juga memiliki nilai sejarah dan menjadi pilihan favorit untuk rekreasi keluarga.\n\n'
        'Nama: Muhammad Irsyad Dimas Abdillah\n'
        'NIM: 2341720088',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Muhammad Irsyad Dimas Abdillah dan 2341720088',
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter layout demo')),
        // Langkah 3 Praktikum 2: Tambah button section ke body
        body: Column(children: [titleSection, buttonSection, textSection]),
      ),
    );
  }

  // Langkah 1 Praktikum 2: Buat method Column _buildButtonColumn
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
```
### Screenshot:

Pada praktikum ini membuat widget textSection yang berisi deskripsi tentang Pemandian Banyu Biru serta nama dan NIM saya. Widget ini ditempatkan di bawah buttonSection pada body aplikasi.
![alt text](img/p3.png)

## Praktikum 4: Implementasi image section
### Code:
```dart
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Title row: Pemandian Alam Banyu Biru
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Pemandian Alam Banyu Biru',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  'Banyu Biru, Pasuruan, Indonesia',
                  style: TextStyle(color: Colors.grey[500]),
                ),
              ],
            ),
          ),
          Icon(Icons.star, color: Colors.red[500]),
          const Text('41'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    // Info tentang Pemandian Alam Banyu Biru
    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Pemandian Alam Banyu Biru adalah salah satu destinasi wisata alam di Pasuruan, Jawa Timur. '
        'Tempat ini terkenal dengan kolam renang alami yang airnya jernih dan segar, berasal langsung dari mata air pegunungan. '
        'Pemandian ini menawarkan suasana asri, pepohonan rindang, dan udara yang sejuk. '
        'Nama: Muhammad Irsyad Dimas Abdillah, NIM: 2341720088. '
        'Banyu Biru juga menjadi tempat favorit untuk rekreasi keluarga dan wisata edukasi tentang sumber air alami.',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Muhammad Irsyad Dimas Abdillah dan 2341720088',
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter layout demo')),
        body: ListView(
          children: [
            Image.asset(
              'img/KolamBB.png',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
```
### Screenshot:
![alt text](img/p4.png)

## TUGAS

### Output:
Menampilkan text "Hello, World!" di tengah layar menggunakan widget Center dan Text.
![alt text](img/t1.png)

Menampilkann 3 gambar dengan row dan column allignment
![alt text](img/t2.png)

Menambahkan pada image asset untuk ukuran gambar menggunakan Expanded
![alt text](img/t3.png)

Flex pada gambar agar gambar menyesuaikan ruang yang ada
![alt text](img/t4.png)

Menambahkan ikon bintang di bawah gambar
![alt text](img/t5.png)