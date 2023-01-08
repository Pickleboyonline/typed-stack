import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:typed_stack/src/greeting/greeting.graphql.dart';
part 'greeting.g.dart';

@hwidget
Widget greetingCard(BuildContext context) {
  final controller = useTextEditingController();

  final greetingApi = useQuery$GreetMe(Options$Query$GreetMe(
      variables: Variables$Query$GreetMe(name: controller.text)));

  final makeApiRequest = useCallback(() {
    greetingApi.refetch();
  }, [greetingApi]);

  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text("isLoading?: ${greetingApi.result.isLoading}"),
      Padding(
          padding: const EdgeInsets.all(10),
          child: TextField(
            controller: controller,
            decoration: const InputDecoration(
                border: InputBorder.none, hintText: 'Please enter your name'),
          )),
      const Padding(padding: EdgeInsets.only(top: 10)),
      if (greetingApi.result.parsedData?.greetMe != null)
        Text("Greeting: ${greetingApi.result.parsedData?.greetMe.message}"),
      TextButton(
          onPressed: makeApiRequest,
          child: greetingApi.result.isLoading
              ? const CircularProgressIndicator(value: null,)
              : const Text("Make API request!"))
    ],
  );
}
