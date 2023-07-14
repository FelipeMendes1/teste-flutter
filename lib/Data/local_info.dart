import 'package:flutter/material.dart';
import 'package:lmtsflutter/components/task.dart';

class TaskInherited extends InheritedWidget {
   TaskInherited({
     Key? key,
    required Widget child,
   })
    : super(key: key,child: child);

     final List <Task> taskList = [
     Task(
     'Maracatu',
     'assets/images/maracatu.webp',
     5),
     Task(
     'Terapia',
     'assets/images/meditar.jpeg',
     3),
     Task(
     'Reunião',
     'assets/images/livro.jpg',
     2),
     Task('Jogar',
     'assets/images/jogar.jpg', 1),
     Task(
     'Aprender Flutter',
     'assets/images/dash.png',
     7),
     Task(
     'Pedalada',
     'assets/images/bike.webp',
     6),
     ];
     void new_task(String nome, String foto, int dificult){
       taskList.add(Task(nome, foto, dificult));

     }

  static TaskInherited of(BuildContext context) {
    final TaskInherited? result = context.dependOnInheritedWidgetOfExactType<TaskInherited>();
    assert(result != null, 'No TaskInherited found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(TaskInherited oldWidget) {
    return oldWidget.taskList.length != taskList.length;
  }
}
