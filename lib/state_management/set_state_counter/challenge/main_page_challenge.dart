import 'package:flutter/material.dart';
import 'package:managing_state_flutter/state_management/set_state_counter/challenge/screen_a.dart';
import 'package:managing_state_flutter/state_management/set_state_counter/challenge/screen_b.dart';

class MainPageChallenge extends StatefulWidget {
  const MainPageChallenge({super.key});

  @override
  State<MainPageChallenge> createState() => _MainPageChallengeState();
}

class _MainPageChallengeState extends State<MainPageChallenge> {
  int total = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        total = total + 1;
                      });
                    },
                    icon: const Icon(Icons.add)),
                Text('$total'),
                IconButton(
                    onPressed: () {
                      setState(() {
                        total = total - 1;
                      });
                    },
                    icon: const Icon(Icons.remove)),
              ],
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ScreenA(
                        value: total,
                        callback: (value) {
                          setState(() {
                            total = value;
                          });
                        },
                      ),
                    ));
              },
              child: const Text('Go To Screen A'),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ScreenB(
                        value: total,
                        callback: (value) => setState(() => total = value),
                      ),
                    ));
              },
              child: const Text('Go To Screen B'),
            ),
          ],
        ),
      ),
    );
  }
}
