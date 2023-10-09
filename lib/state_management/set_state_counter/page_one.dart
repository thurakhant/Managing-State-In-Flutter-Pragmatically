import 'package:flutter/material.dart';
import 'package:managing_state_flutter/state_management/set_state_counter/example_stateful_widget.dart';
import 'package:managing_state_flutter/state_management/set_state_counter/page_two.dart';

class PageOneView extends StatefulWidget {
  const PageOneView({super.key});

  @override
  State<PageOneView> createState() => _PageOneViewState();
}

class _PageOneViewState extends State<PageOneView> {
  int _counter = 1;

  void _navigate() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => PageTwoView(
          counter: _counter,
          callback: (value) {
            setState(() {
              _counter = value;
            });
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const ExampleStatefulPage()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _navigate,
        tooltip: 'Move to Page Two',
        child: const Icon(Icons.arrow_right_alt),
      ),
    );
  }
}
