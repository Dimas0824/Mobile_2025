import 'package:flutter/material.dart';

class ImageGridWidget extends StatelessWidget {
  const ImageGridWidget({super.key});

  Widget _buildDecoratedImage(String imagePath) => Expanded(
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(width: 10, color: Colors.black38),
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      ),
      margin: const EdgeInsets.all(4),
      child: Image.asset(imagePath, fit: BoxFit.cover),
    ),
  );

  Widget _buildImageRow(String imagePath1, String imagePath2) => Row(
    children: [
      _buildDecoratedImage(imagePath1),
      _buildDecoratedImage(imagePath2),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        decoration: const BoxDecoration(color: Colors.black26),
        child: Column(
          children: [
            _buildImageRow('img/KolamBB.png', 'img/lake.png'),
            _buildImageRow('img/mountain.png', 'img/pavlova.png'),
          ],
        ),
      ),
    );
  }
}
