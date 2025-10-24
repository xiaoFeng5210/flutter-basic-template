import 'package:flutter/material.dart';
import 'package:flutter_eg_1/provider/joke.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {

  final TextEditingController _controller = TextEditingController();
  void _incrementCounter() {
  }

  @override
  Widget build(BuildContext context) {
    final joke = ref.watch(jokeProvider.select((it) => it.text));

    @override
    void initState() {
      super.initState();

    }

    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '我是小号文字',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            Text(
              '我是正常文字',
            ),

            Text(joke),

            SizedBox(height: 10),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 200.0, vertical: 8.0),
              child: TextField(
                controller: _controller,
                onChanged: (value) {
                  ref.read(jokeProvider.notifier).changeText(value);
                },
                decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Password'),
              ),
            ),

            ElevatedButton(
              child: Text('保存配置'),
              onPressed: () {
                print(_controller.text);
              },
            ),
            SizedBox(height: 10),
            TextButton(onPressed: () {
              context.go('/test/123');
            }, child: Text('进入test页面'))
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
