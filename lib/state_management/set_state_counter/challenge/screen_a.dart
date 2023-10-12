import 'package:flutter/material.dart';

class ScreenA extends StatefulWidget {
  int value;
  final Function(int) callback;
  ScreenA({
    super.key,
    required this.value,
    required this.callback,
  });

  @override
  State<ScreenA> createState() => _ScreenAState();
}

class _ScreenAState extends State<ScreenA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        widget.value++;
                      });
                      widget.callback(widget.value);
                    },
                    icon: const Icon(Icons.add)),
                Text('${widget.value}'),
                IconButton(
                    onPressed: () {
                      setState(() {
                        widget.value--;
                      });
                      widget.callback(widget.value);
                    },
                    icon: const Icon(Icons.remove)),
              ],
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(widget.value);
              },
              child: const Text('Go To Main'),
            ),
          ],
        ),
      ),
    );
  }
}
