import 'package:flutter/material.dart';
import 'package:belanja_dimas/models/item.dart';
import 'package:belanja_dimas/widgets/item_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Item> items = [
      Item(
        name: 'Sugar',
        price: 5000,
        imageUrl:
            'https://images.unsplash.com/photo-1587241321921-91a834d82e6e?w=400',
        stock: 50,
        rating: 4.5,
      ),
      Item(
        name: 'Salt',
        price: 2000,
        imageUrl:
            'https://images.unsplash.com/photo-1598511726623-d2e9996892f0?w=400',
        stock: 100,
        rating: 4.8,
      ),
      Item(
        name: 'Rice',
        price: 15000,
        imageUrl:
            'https://images.unsplash.com/photo-1586201375761-83865001e31c?w=400',
        stock: 30,
        rating: 4.7,
      ),
      Item(
        name: 'Cooking Oil',
        price: 25000,
        imageUrl:
            'https://images.unsplash.com/photo-1474979266404-7eaacbcd87c5?w=400',
        stock: 20,
        rating: 4.6,
      ),
      Item(
        name: 'Flour',
        price: 8000,
        imageUrl:
            'https://images.unsplash.com/photo-1628057238584-e604b8edd5c5?w=400',
        stock: 45,
        rating: 4.4,
      ),
      Item(
        name: 'Coffee',
        price: 12000,
        imageUrl:
            'https://images.unsplash.com/photo-1559056199-641a0ac8b55e?w=400',
        stock: 60,
        rating: 4.9,
      ),
      Item(
        name: 'Tea',
        price: 7000,
        imageUrl:
            'https://images.unsplash.com/photo-1597318281699-124a4a0af363?w=400',
        stock: 80,
        rating: 4.3,
      ),
      Item(
        name: 'Milk',
        price: 10000,
        imageUrl:
            'https://images.unsplash.com/photo-1550583724-b2692b85b150?w=400',
        stock: 35,
        rating: 4.7,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Shopping List',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                  return ItemCard(item: item);
                },
              ),
            ),
          ),
          _buildFooter(),
        ],
      ),
    );
  }

  Widget _buildFooter() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.deepPurple.shade50,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, -3),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Nama: Muhammad Irsyad Dimas Abdillah',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.deepPurple.shade700,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'NIM: 2341720088',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.deepPurple.shade700,
            ),
          ),
        ],
      ),
    );
  }
}
