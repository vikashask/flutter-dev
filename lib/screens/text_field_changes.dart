import 'package:flutter/material.dart';

class TextFieldChange extends StatefulWidget {
  const TextFieldChange({Key? key}) : super(key: key);

  @override
  State<TextFieldChange> createState() => _TextFieldChangeState();
}

class _TextFieldChangeState extends State<TextFieldChange> {
  final myController = TextEditingController();

// create text controller and use it to retrieve the current value
  @override
  void initState() {
    super.initState();
    // Start listening to changes.
    myController.addListener(_printLatestValue);
  }

  void _printLatestValue() {
    print('Second text field: ${myController.text}');
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the widget tree.
    // This also removes the _printLatestValue listener.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Retrive text Input"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              onChanged: (text) {
                print('First text field $text');
              },
            ),
            TextField(
              controller: myController,
            )
          ],
        ),
      ),
    );
  }
}
