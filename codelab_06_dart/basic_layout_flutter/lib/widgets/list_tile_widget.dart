import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const Text(
            'ListTile Examples',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: ListView(
              children: [
                Card(
                  child: ListTile(
                    leading: const CircleAvatar(
                      backgroundColor: Colors.red,
                      child: Text('A', style: TextStyle(color: Colors.white)),
                    ),
                    title: const Text('Alice Johnson'),
                    subtitle: const Text('Software Engineer'),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: const CircleAvatar(
                      backgroundColor: Colors.blue,
                      child: Text('B', style: TextStyle(color: Colors.white)),
                    ),
                    title: const Text('Bob Smith'),
                    subtitle: const Text('Product Manager'),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: const CircleAvatar(
                      backgroundColor: Colors.green,
                      child: Text('C', style: TextStyle(color: Colors.white)),
                    ),
                    title: const Text('Carol Williams'),
                    subtitle: const Text('UX Designer'),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: const CircleAvatar(
                      backgroundColor: Colors.orange,
                      child: Text('D', style: TextStyle(color: Colors.white)),
                    ),
                    title: const Text('David Brown'),
                    subtitle: const Text('Data Analyst'),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
