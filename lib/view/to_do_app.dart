import 'package:flutter/material.dart';
import 'package:todoapp/components/dialog_box.dart';
import 'package:todoapp/components/to_do_list.dart';
import 'package:todoapp/modal/to_do_modal.dart';

class ToDoApp extends StatefulWidget {
  const ToDoApp({super.key});

  @override
  State<ToDoApp> createState() => _ToDoAppState();
}

class _ToDoAppState extends State<ToDoApp> {
  final _controller = TextEditingController();
  //List of ToDoList
  List toDoList = [
    ['Task-1', false],
    ['Task-2', false],
    ['Task-3', true],
    ['Task-4', false],
    ['Task-5', true],
    ['Task-6', false],
  ];

  // save new task

  void saveNewTask() {
    setState(() {
      toDoList.add([_controller.text, false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
  }

  //? for null safety and int index to catch the current index or Pass the index of the current task.
  void checkBoxChecker(bool? value, int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  //create a new task

  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox(
          controller: _controller,
          iscancel: () => Navigator.of(context).pop(),
          issaved: saveNewTask,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Text(
          'To Do App',
          style: TextStyle(fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => ToDoList(
          todo: ToDoModal(
            taskname: toDoList[index][0],
            isCompleted: toDoList[index][1],
            onchanged: (value) => checkBoxChecker(value, index),
          ),
        ),
        itemCount: toDoList.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: const Icon(Icons.add),
      ),
    );
  }
}
