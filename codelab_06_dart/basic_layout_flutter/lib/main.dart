import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Hello World',
                textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 32, color: Colors.black87),
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('img/lake.png', width: 80, height: 80),
                  Image.asset('img/KolamBB.png', width: 80, height: 80),
                  Image.asset('img/mountain.png', width: 80, height: 80),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
