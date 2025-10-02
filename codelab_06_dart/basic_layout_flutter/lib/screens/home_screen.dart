import 'package:flutter/material.dart';
import '../widgets/recipe_card_widget.dart';
import '../widgets/image_grid_widget.dart';
import '../widgets/grid_view_widget.dart';
import '../widgets/list_view_widget.dart';
import '../widgets/stack_widget.dart';
import '../widgets/card_demo_widget.dart';
import '../widgets/list_tile_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
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
        body: const TabBarView(
          children: [
            RecipeCardWidget(),
            ImageGridWidget(),
            GridViewWidget(),
            ListViewWidget(),
            StackWidget(),
            CardDemoWidget(),
            ListTileWidget(),
          ],
        ),
      ),
    );
  }
}
