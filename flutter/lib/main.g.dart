// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class UserCard extends HookWidget {
  const UserCard(
    this.index, {
    Key? key,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext _context) => userCard(
        _context,
        index,
      );
}

class MyApp extends StatelessWidget {
  const MyApp(
    this.graphQLClient, {
    Key? key,
  }) : super(key: key);

  final ValueNotifier<GraphQLClient> graphQLClient;

  @override
  Widget build(BuildContext _context) => myApp(
        _context,
        graphQLClient,
      );
}
