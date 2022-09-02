import 'package:flutter/material.dart';

class GridViewList extends StatelessWidget {
  const GridViewList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'grid view';
    return Scaffold(
      appBar: AppBar(title: const Text(title)),
      body: GridView.count(
        // Create a grid with 2 columns. If you change the scrollDirection to
        // horizontal, this produces 2 rows.
        crossAxisCount: 2,
        // Generate 100 widgets that display their index in the List.
        children: List.generate(10, (index) {
          return Center(
            child: Text(
              'Item $index',
              style: Theme.of(context).textTheme.headline5,
            ),
          );
        }),
      ),
    );
  }
}
