import 'package:flutter/material.dart';
import 'package:flutter_dev/model/to_do_model.dart';
import 'package:flutter_dev/screens/detailScreen.dart';

class ToDoScreen extends StatelessWidget {
  // ToDoScreen({Key? key}) : super(key: key);
  const ToDoScreen({super.key, required this.todos});
  final List<Todo> todos;

  // final data = [
  //   {"title": "test", "message": "sdsdsd"}
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todos'),
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(todos[index].title),
            // When a user taps the ListTile, navigate to the DetailScreen.
            // Notice that you're not only creating a DetailScreen, you're
            // also passing the current todo through to it.
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailScreen(),
                  // Pass the arguments as part of the RouteSettings. The
                  // DetailScreen reads the arguments from these settings.
                  settings: RouteSettings(
                    arguments: todos[index],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
