import 'package:flutter_dev/model/to_do_model.dart';

final List<Todo> todos = List.generate(
  20,
  (i) => Todo(
    'Todo $i',
    'A description of what needs to be done for Todo $i',
  ),
);
