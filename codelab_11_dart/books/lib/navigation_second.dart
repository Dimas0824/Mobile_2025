import 'package:flutter/material.dart';

class NavigationSecond extends StatefulWidget {
  const NavigationSecond({super.key});

  @override
  State<NavigationSecond> createState() => _NavigationSecondState();
}

class _NavigationSecondState extends State<NavigationSecond> {
  @override
  Widget build(BuildContext context) {
    Color color;
    return Scaffold(
      appBar: AppBar(title: const Text('Navigation Second')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFB0BEC5), // Soft Gray
              ),
              child: const Text('Soft Gray'),
              onPressed: () {
                color = const Color(0xFFB0BEC5);
                Navigator.pop(context, color);
              },
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF90CAF9), // Light Blue
              ),
              child: const Text('Light Blue'),
              onPressed: () {
                color = const Color(0xFF90CAF9);
                Navigator.pop(context, color);
              },
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFA5D6A7), // Mint Green
              ),
              child: const Text('Mint Green'),
              onPressed: () {
                color = const Color(0xFFA5D6A7);
                Navigator.pop(context, color);
              },
            ),
          ],
        ),
      ),
    );
  }
}
