import 'package:flutter/material.dart';
import 'package:flutter_dev/providers/counter_provider.dart';
import 'package:provider/provider.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int count = Provider.of<CounterProvider>(context, listen: true).Count;
    return Scaffold(
      appBar: AppBar(
        title: const Text('first screen'),
      ),
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          Provider.of<CounterProvider>(context, listen: false).incrementCount();
          Navigator.pushNamed(context, '/second', arguments: "test arg");
        },
        child: const Text("Launch screen"),
      )),
    );
  }
}
