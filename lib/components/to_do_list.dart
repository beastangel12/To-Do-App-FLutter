import 'package:flutter/material.dart';
import 'package:todoapp/modal/to_do_modal.dart';

class ToDoList extends StatelessWidget {
  final ToDoModal todo;
  const ToDoList({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              // Is Completed CheckBox
              Checkbox(
                value: todo.isCompleted,
                onChanged: todo.onchanged,
                activeColor: Colors.blue,
              ),

              //Task-Name
              Text(
                todo.taskname,
                style: TextStyle(
                    fontSize: 20,
                    decoration: todo.isCompleted
                        ? TextDecoration.lineThrough
                        : TextDecoration.none),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
