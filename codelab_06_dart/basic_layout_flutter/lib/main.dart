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
                  Expanded(child: Image.asset('img/lake.png')),
                  Expanded(flex: 2, child: Image.asset('img/KolamBB.png')),
                  Expanded(child: Image.asset('img/mountain.png')),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.star, color: Colors.green[500]),
                        Icon(Icons.star, color: Colors.green[500]),
                        Icon(Icons.star, color: Colors.green[500]),
                        const Icon(Icons.star, color: Colors.black),
                        const Icon(Icons.star, color: Colors.black),
                      ],
                    ),
                    const Text(
                      '170 Reviews',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontFamily: 'Roboto',
                        letterSpacing: 0.5,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
