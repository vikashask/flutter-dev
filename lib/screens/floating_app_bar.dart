import 'package:flutter/material.dart';

class FloatingAppBar extends StatelessWidget {
  const FloatingAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'Floating App Bar';
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text(title),
      // ),
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            title: Text(title),
            floating: true,
            flexibleSpace: Placeholder(),
            pinned: true,
            expandedHeight: 200,
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
                  ((context, index) => ListTile(
                        title: Text('Item #$index'),
                      )),
                  childCount: 30))
        ],
      ),
    );
  }
}
