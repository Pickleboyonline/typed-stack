import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:flutter/widgets.dart';

part 'main.g.dart';

// To build widgets:
// flutter pub run build_runner watch

// To get React-Native like experience:
// https://github.com/rrousselGit/functional_widget
// https://pub.dev/packages/flutter_hooks

void main() {
  runApp(const MyApp());
}

@hwidget
Widget userCard(BuildContext context, int index) {
  final count = useState(4);
  return Card(
    child: Column(children: <Widget>[
      Text('Card $index, count value: ${count.value}'),
      TextButton(
          onPressed: (() {
            count.value++;
          }),
          child: const Text('Press me'))
    ]),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World!',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Wecsacome!'),
        ),
        body: Center(
            child: Column(
          children: const <Widget>[Text('Hello '), UserCard(3), UserCard(6)],
        )),
      ),
    );
  }
}
