import 'package:flutter/material.dart';
import 'package:todoapp/view/to_do_app.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ToDoApp(),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}
