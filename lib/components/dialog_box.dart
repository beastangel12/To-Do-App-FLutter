import 'package:flutter/material.dart';
import 'package:todoapp/components/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback issaved;
  VoidCallback iscancel;
  DialogBox(
      {super.key,
      this.controller,
      required this.iscancel,
      required this.issaved});
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        height: 200,
        color: Colors.yellow,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: controller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Add a new task',
                ),
              ),
            ),

            //  Save button + Cancel Button
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              // Save button
              children: [
                MyButtons(
                  text: "Save",
                  onpressed: issaved,
                ),
                const SizedBox(
                  width: 5,
                ),
                MyButtons(text: 'Cancel', onpressed: iscancel)
              ],
              // Cancel Button
            )
          ],
        ),
      ),
    );
  }
}
