import 'package:flutter/material.dart';

class retirveInput extends StatefulWidget {
  const retirveInput({Key? key}) : super(key: key);

  @override
  State<retirveInput> createState() => _retirveInputState();
}

class _retirveInputState extends State<retirveInput> {
  final myController = TextEditingController();

  @override
  void dispose() {
    // cleanup the controller when the widget is disposed
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Retrieve Input")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          controller: myController,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  content: Text(myController.text),
                );
              });
        },
        tooltip: 'Show me the value',
        child: const Icon(Icons.text_fields),
      ),
    );
  }
}
