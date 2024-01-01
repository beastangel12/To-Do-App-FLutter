import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  MyButtons({super.key, required this.text, required this.onpressed});

  final String text;
  VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onpressed,
      child: Text(text),
    );
  }
}
