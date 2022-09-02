import 'package:flutter/material.dart';
import 'package:flutter_dev/widgets/selection_button.dart';

class ReturningData extends StatefulWidget {
  const ReturningData({Key? key}) : super(key: key);

  @override
  State<ReturningData> createState() => _ReturningDataState();
}

class _ReturningDataState extends State<ReturningData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Returning Data Demo"),
      ),
      body: const Center(
        child: SelectionButton(),
      ),
    );
  }
}
