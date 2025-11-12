import 'package:flutter/material.dart';

class ColorStream {
  final List<Color> colors = [
    Colors.blueGrey,
    Colors.amber,
    Colors.deepPurple,
    Colors.lightBlue,
    Colors.teal,
    // tambahan warna
    Colors.teal.shade300,
    Colors.blue.shade200,
    Colors.green.shade200,
    Colors.purple.shade100,
    Colors.orange.shade100,
    Colors.grey.shade200,
    Colors.brown.shade100,
  ];

  Stream<Color> getColors() async* {
    // yield satu per satu dengan delay
    for (var color in colors) {
      await Future.delayed(const Duration(seconds: 1));
      yield color;
    }
    // yield* dengan Stream.periodic
    yield* Stream.periodic(const Duration(seconds: 1), (int t) {
      int index = t % colors.length;
      return colors[index];
    });
  }
}
