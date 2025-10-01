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
