import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:flutter/widgets.dart';

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:typed_stack/src/widgets/greeting/greeting.dart';
// import 'package:typed_stack/person.graphql.dart';
import 'amplifyconfiguration.dart';

import 'package:graphql_flutter/graphql_flutter.dart';

import 'package:flutter_dotenv/flutter_dotenv.dart';

part 'main.g.dart';

// To build widgets:
// flutter pub run build_runner watch

// To get React-Native like experience:
// https://github.com/rrousselGit/functional_widget
// https://pub.dev/packages/flutter_hooks
//

void main() async {
  // We're using HiveStore for persistence,
  // so we need to initialize Hive.
  await initHiveForFlutter();

  await dotenv.load(fileName: ".env");

  try {
    final auth = AmplifyAuthCognito();
    await Amplify.addPlugin(auth);

    // call Amplify.configure to use the initialized categories in your app
    await Amplify.configure(getAmplifyConfiguration());
    print('Amplify configured!');
  } on Exception catch (e) {
    safePrint('An error occurred configuring Amplify: $e');
  }

  final HttpLink httpLink = HttpLink(dotenv.env['DEV_API_URL']!);

  final AuthLink authLink = AuthLink(
    getToken: () async => 'Bearer <YOUR_PERSONAL_ACCESS_TOKEN>',
    // OR
    // getToken: () => 'Bearer <YOUR_PERSONAL_ACCESS_TOKEN>',
  );

  final Link link = httpLink;

  ValueNotifier<GraphQLClient> client = ValueNotifier(
    GraphQLClient(
      link: link,
      // The default store is the InMemoryStore, which does NOT persist to disk
      cache: GraphQLCache(store: HiveStore()),
    ),
  );

  runApp(MyApp(client));
}

@hwidget
Widget userCard(BuildContext context, int index) {
  final count = useState(4);

  //final result = useQuery$FetchPerson(Options$Query$FetchPerson(variables: Variables$Query$FetchPerson(id: "Hey")));

  final configureAmplify = useCallback(() async {}, []);

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

@swidget
Widget myApp(BuildContext context, ValueNotifier<GraphQLClient> graphQLClient) {
  var child = MaterialApp(
    title: 'Hello World!',
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to Typed-stack!'),
      ),
      body: const Center(child: GreetingCard()),
    ),
  );

  return GraphQLProvider(
    client: graphQLClient,
    child: child,
  );
}
