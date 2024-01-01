class ToDoModal {
  final String taskname;
  final bool isCompleted;
  Function(bool?)? onchanged;

  ToDoModal({
    required this.taskname,
    required this.isCompleted,
    required this.onchanged,
  });
}
