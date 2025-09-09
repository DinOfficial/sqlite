import 'package:flutter/material.dart';
import 'package:sqlite/stack_custom_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Practice App', home: StackCustomWidget());
  }
}

