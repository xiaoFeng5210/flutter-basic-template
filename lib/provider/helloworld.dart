import 'package:flutter_riverpod/flutter_riverpod.dart';

final helloWorldProvider = NotifierProvider<HelloWorldNotifier, String>(HelloWorldNotifier.new);

class HelloWorldNotifier extends Notifier<String> {
  @override
  String build() {
    return 'Hello world';
  }

  void changeStr(String str) {
    state = str;
  }
}
