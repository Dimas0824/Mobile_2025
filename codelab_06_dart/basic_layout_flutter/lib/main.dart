import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Build decorated image with border
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

  // Build row with 2 images
  Widget _buildImageRow(String imagePath1, String imagePath2) => Row(
    children: [
      _buildDecoratedImage(imagePath1),
      _buildDecoratedImage(imagePath2),
    ],
  );

  // Build image column with 2 rows
  Widget buildImageColumn() {
    return Container(
      decoration: const BoxDecoration(color: Colors.black26),
      child: Column(
        children: [
          _buildImageRow('img/KolamBB.png', 'img/lake.png'),
          _buildImageRow('img/mountain.png', 'img/pavlova.png'),
        ],
      ),
    );
  }

  // Build GridView with extent
  Widget _buildGrid() => GridView.extent(
    maxCrossAxisExtent: 150,
    padding: const EdgeInsets.all(4),
    mainAxisSpacing: 4,
    crossAxisSpacing: 4,
    children: _buildGridTileList(30),
  );

  // Generate grid tiles
  List<Widget> _buildGridTileList(int count) => List.generate(
    count,
    (i) => Container(
      color: Colors.primaries[i % Colors.primaries.length],
      child: Center(
        child: Text(
          'Item $i',
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );

  // Build ListView
  Widget _buildList() {
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

  // Build ListTile
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

  // Build Stack with circular avatar and label
  Widget _buildStack() {
    return Stack(
      alignment: const Alignment(0.6, 0.6),
      children: [
        const CircleAvatar(
          backgroundColor: Colors.blue,
          radius: 100,
          child: Icon(Icons.person, size: 100, color: Colors.white),
        ),
        Container(
          decoration: const BoxDecoration(color: Colors.black45),
          padding: const EdgeInsets.all(10),
          child: const Text(
            'Irsyad Dimas',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  // Build Card with contact information
  Widget _buildCard() {
    return SizedBox(
      height: 210,
      child: Card(
        child: Column(
          children: [
            ListTile(
              title: const Text(
                'Jalan Soekarno Hatta No.123',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: const Text('Kota Malang, Jawa Timur'),
              leading: Icon(Icons.restaurant_menu, color: Colors.blue[500]),
            ),
            const Divider(),
            ListTile(
              title: const Text(
                '05755896541',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              leading: Icon(Icons.contact_phone, color: Colors.blue[500]),
            ),
            ListTile(
              title: const Text('Emailku@example.com'),
              leading: Icon(Icons.contact_mail, color: Colors.blue[500]),
            ),
          ],
        ),
      ),
    );
  }

  // Build multiple cards demo
  Widget _buildCardsDemo() {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        _buildCard(),
        const SizedBox(height: 16),
        Card(
          elevation: 8,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Elevated Card',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                const Text('This card has elevation of 8'),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(onPressed: () {}, child: const Text('ACTION 1')),
                    TextButton(onPressed: () {}, child: const Text('ACTION 2')),
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),
        Card(
          elevation: 16,
          child: ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.purple,
              child: Icon(Icons.music_note, color: Colors.white),
            ),
            title: const Text(
              'Music Track',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: const Text('Artist Name • Album'),
            trailing: IconButton(
              icon: const Icon(Icons.play_arrow),
              onPressed: () {},
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    const descTextStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      fontSize: 18,
      height: 2,
    );

    // Title text
    final titleText = Container(
      padding: const EdgeInsets.all(20),
      child: const Text(
        'Strawberry Pavlova',
        style: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        textAlign: TextAlign.center,
      ),
    );

    // Subtitle text
    final subTitle = const Text(
      'Pavlova is a meringue-based dessert named after the Russian ballerina '
      'Anna Pavlova. Pavlova features a crisp crust and soft, light inside, '
      'topped with fruit and whipped cream.',
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 16, color: Colors.black87, height: 1.5),
    );

    // Rating stars row
    final stars = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        const Icon(Icons.star, color: Colors.black),
        const Icon(Icons.star, color: Colors.black),
      ],
    );

    final ratings = Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          stars,
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
    );

    // Icon list with 3 columns structure
    final iconList = DefaultTextStyle.merge(
      style: descTextStyle,
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Icon(Icons.kitchen, color: Colors.green[500]),
                const Text('PREP:'),
                const Text('25 min'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.timer, color: Colors.green[500]),
                const Text('COOK:'),
                const Text('1 hr'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.restaurant, color: Colors.green[500]),
                const Text('FEEDS:'),
                const Text('4-6'),
              ],
            ),
          ],
        ),
      ),
    );

    // Left column content
    final leftColumn = Container(
      padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [titleText, subTitle, ratings, iconList],
      ),
    );

    // Main image
    final mainImage = Image.asset('img/pavlova.png', fit: BoxFit.cover);

    return MaterialApp(
      title: 'Flutter Layout Demo',
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 7,
        child: Scaffold(
          backgroundColor: Colors.grey[200],
          appBar: AppBar(
            title: const Text('Flutter Layout Demo'),
            backgroundColor: Colors.green[500],
            bottom: const TabBar(
              isScrollable: true,
              tabs: [
                Tab(text: 'Recipe Card'),
                Tab(text: 'Image Grid'),
                Tab(text: 'GridView'),
                Tab(text: 'ListView'),
                Tab(text: 'Stack'),
                Tab(text: 'Card'),
                Tab(text: 'ListTile'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              // Tab 1: Recipe Card
              Center(
                child: Container(
                  margin: const EdgeInsets.fromLTRB(0, 40, 0, 30),
                  height: 600,
                  child: Card(
                    elevation: 4,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 440, child: leftColumn),
                        Expanded(child: mainImage),
                      ],
                    ),
                  ),
                ),
              ),
              // Tab 2: Image Grid (2x2)
              Padding(
                padding: const EdgeInsets.all(20),
                child: buildImageColumn(),
              ),
              // Tab 3: GridView
              _buildGrid(),
              // Tab 4: ListView
              _buildList(),
              // Tab 5: Stack
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildStack(),
                    const SizedBox(height: 40),
                    const Text(
                      'Stack Demo',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text('Avatar with overlaid label NIM 2341720088'),
                  ],
                ),
              ),
              // Tab 6: Card
              _buildCardsDemo(),
              // Tab 7: ListTile in Card
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    const Text(
                      'ListTile Examples',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Expanded(
                      child: ListView(
                        children: [
                          Card(
                            child: ListTile(
                              leading: const CircleAvatar(
                                backgroundColor: Colors.red,
                                child: Text(
                                  'A',
                                  style: TextStyle(color: Colors.white),
                                ),
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
                                child: Text(
                                  'B',
                                  style: TextStyle(color: Colors.white),
                                ),
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
                                child: Text(
                                  'C',
                                  style: TextStyle(color: Colors.white),
                                ),
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
                                child: Text(
                                  'D',
                                  style: TextStyle(color: Colors.white),
                                ),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
