import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  ListTile _tile(String title, String subtitle, IconData icon) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
      ),
      subtitle: Text(subtitle),
      leading: Icon(icon, color: Colors.blue[500]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _tile(
          'Bioskop XXI Plaza Indonesia',
          'Jl. M.H. Thamrin No.28-30',
          Icons.theaters,
        ),
        _tile('CGV Grand Indonesia', 'Jl. M.H. Thamrin No.1', Icons.theaters),
        _tile(
          'Bioskop XXI Kota Kasablanka',
          'Jl. Casablanca Raya Kav.88',
          Icons.theaters,
        ),
        _tile('Bioskop XXI Blok M Plaza', 'Jl. Bulungan No.76', Icons.theaters),
        _tile(
          'CGV FX Sudirman',
          'Jl. Jend. Sudirman Pintu Satu Senayan',
          Icons.theaters,
        ),
        _tile(
          'Bioskop XXI Gandaria City',
          'Jl. Sultan Iskandar Muda',
          Icons.theaters,
        ),
        const Divider(),
        _tile(
          'Restoran Sederhana',
          'Jl. Bendungan Hilir No.29',
          Icons.restaurant,
        ),
        _tile('Bebek Kaleyo', 'Jl. Cikini Raya No.70', Icons.restaurant),
        _tile('Warung Bu Kris', 'Jl. Panjang No.5', Icons.restaurant),
        _tile('Bakmi GM', 'Jl. Gajah Mada No.123', Icons.restaurant),
      ],
    );
  }
}
