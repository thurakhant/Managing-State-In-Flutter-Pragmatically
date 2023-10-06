import 'package:flutter/material.dart';
import 'package:managing_state_flutter/state_management/set_state/set_state.dart';


/// This is a main method
///

void main() {
  runApp(const MaterialApp(
    home: StateManagementApp(),
  ));
}

/// You can change each state management view
///

class StateManagementApp extends StatelessWidget {
  const StateManagementApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const SetStateDemo();
  }
}
