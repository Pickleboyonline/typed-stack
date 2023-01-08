import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:flutter/widgets.dart';

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:typed_stack/person.graphql.dart';
import 'amplifyconfiguration.dart';

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

  final result = useQuery$FetchPerson(Options$Query$FetchPerson(variables: Variables$Query$FetchPerson(id: "Hey")));

  final configureAmplify = useCallback(() async {
    try {
      final auth = AmplifyAuthCognito();
      await Amplify.addPlugin(auth);

      // call Amplify.configure to use the initialized categories in your app
      await Amplify.configure(amplifyconfig);
      print('Amplify configured!');
    } on Exception catch (e) {
      safePrint('An error occurred configuring Amplify: $e');
    }
  }, []);

  void onPress() {
    count.value++;
  }

  useEffect(() {
    print('Starting to configure amplify...');
    configureAmplify();
    return;
  }, []);

  void isUserSignedIn() {}

  return Card(
    child: Column(children: <Widget>[
      Text('Card $index, count value: ${count.value}'),
      TextButton(onPressed: onPress, child: const Text('Press me'))
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
          children: const <Widget>[Text('Hello '), UserCard(3)],
        )),
      ),
    );
  }
}
