import 'package:flutter/material.dart';
import 'package:flutter_dev/data/to_do_data.dart';
import 'package:flutter_dev/providers/counter_provider.dart';
import 'package:flutter_dev/screens/drawer_demo.dart';
import 'package:flutter_dev/screens/first_page.dart';
import 'package:flutter_dev/screens/floating_app_bar.dart';
import 'package:flutter_dev/screens/grid_view_list.dart';
import 'package:flutter_dev/screens/horizontal_list.dart';
import 'package:flutter_dev/screens/login.dart';
import 'package:flutter_dev/screens/retrieve-input.dart';
import 'package:flutter_dev/screens/returing_data.dart';
import 'package:flutter_dev/screens/second_page.dart';
import 'package:flutter_dev/screens/tab_bar_demo.dart';
import 'package:flutter_dev/screens/text_field_changes.dart';
import 'package:flutter_dev/screens/toDoScreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => CounterProvider(),
    child: MaterialApp(
      title: 'Named Route Demo',
      initialRoute: '/login',
      routes: {
        '/': (context) => const FirstPage(),
        '/second': ((context) => const SecondPage()),
        '/todo': ((context) => (ToDoScreen(todos: todos))),
        '/grid-view-list': ((context) => GridViewList()),
        '/horizontal-List': (context) => const HorizontalList(),
        '/floating-app': (context) => const FloatingAppBar(),
        '/returing-data': (context) => const ReturningData(),
        '/drawer-demo': (context) => const DrawerDemo(),
        '/tab-bar-demo': (context) => const TabBarDemo(),
        '/login': (context) => const Login(),
        '/text-field-change': (context) => const TextFieldChange(),
        '/retrieve-input': (context) => const retirveInput(),
      },
    ),
  ));
}

// not in use
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
