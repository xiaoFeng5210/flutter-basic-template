import 'package:flutter_riverpod/flutter_riverpod.dart';

final jokeProvider = NotifierProvider<JokeNotifier, Joke>(JokeNotifier.new);

// 复杂状态
class Joke {
 final String text;
 final String? name;
 final String? lover;

 Joke({this.text = '默认值', this.name, this.lover});

 Joke copyWith(String text) {
  return Joke(
    text: text
  );
 }
}

class JokeNotifier extends Notifier<Joke> {
  @override
  Joke build() {
    return Joke();
  }

  void changeText(String text) {
    state = state.copyWith(text);
  }
}
