import 'package:flutter/material.dart';
import 'package:flutter_dev/providers/counter_provider.dart';
import 'package:provider/provider.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String args = ModalRoute.of(context)!.settings.arguments as String;
    int count = Provider.of<CounterProvider>(context, listen: true).Count;

    print("- - - $args");
    return Scaffold(
      appBar: AppBar(
        title: const Text("second page"),
      ),
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text(args + count.toString()),
      )),
    );
  }
}
