import 'package:flutter/material.dart';
import 'package:managing_state_flutter/state_management/set_state_counter/challenge/main_page.dart';
import 'package:managing_state_flutter/state_management/set_state_counter/set_state_counter_app.dart';

/// This is a main method
///

void main() {
  runApp(
    const StateManagementApp(),
  );
}

/// You can change each state management view
/// [ SetStateView ]

class StateManagementApp extends StatelessWidget {
  const StateManagementApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPageChallenge(),
    );
  }
}
