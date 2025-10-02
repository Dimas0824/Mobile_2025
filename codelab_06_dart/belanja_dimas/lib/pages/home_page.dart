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
        price: 17500,
        imageUrl:
            'https://plus.unsplash.com/premium_photo-1726072362679-2b2023862024?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', // Gula pasir
        stock: 50,
        rating: 4.5,
      ),
      Item(
        name: 'Salt',
        price: 2000,
        imageUrl:
            'https://plus.unsplash.com/premium_photo-1672349888046-361807de476f?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', // Garam dapur
        stock: 100,
        rating: 4.8,
      ),
      Item(
        name: 'Rice',
        price: 14000,
        imageUrl:
            'https://plus.unsplash.com/premium_photo-1705338026411-00639520a438?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cmljZXxlbnwwfHwwfHx8MA%3D%3D', // Beras
        stock: 30,
        rating: 4.7,
      ),
      Item(
        name: 'Cooking Oil',
        price: 21000,
        imageUrl:
            'https://images.unsplash.com/photo-1720468750623-39e9a09f5067?q=80&w=764&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', // Minyak goreng
        stock: 20,
        rating: 4.6,
      ),
      Item(
        name: 'Flour',
        price: 8000,
        imageUrl:
            'https://plus.unsplash.com/premium_photo-1671377660174-e43996bfdf03?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', // Tepung terigu
        stock: 45,
        rating: 4.4,
      ),
      Item(
        name: 'Coffee',
        price: 25000,
        imageUrl:
            'https://plus.unsplash.com/premium_photo-1666174326095-37c94a3e93f4?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', // Kopi bubuk
        stock: 60,
        rating: 4.9,
      ),
      Item(
        name: 'Tea',
        price: 12000,
        imageUrl:
            'https://images.unsplash.com/photo-1563822249366-3efb23b8e0c9?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', // Teh celup
        stock: 80,
        rating: 4.3,
      ),
      Item(
        name: 'Milk',
        price: 18000,
        imageUrl:
            'https://images.unsplash.com/photo-1634141510639-d691d86f47be?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8bWlsa3xlbnwwfHwwfHx8MA%3D%3D', // Susu cair
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
            color: Colors.grey.withValues(alpha: 0.2),
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
