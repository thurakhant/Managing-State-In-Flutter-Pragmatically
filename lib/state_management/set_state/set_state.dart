import 'package:flutter/material.dart';

class SetStateDemo extends StatelessWidget {
  const SetStateDemo({super.key});

  @override
  build(BuildContext context) {
    return const PageOne();
  }
}

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    print('---> Widget count ${context.runtimeType}');
    return Scaffold(
      body: Center(
        child: Text('Hello'),
      ),
    );
  }
}
