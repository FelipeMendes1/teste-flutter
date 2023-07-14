import 'package:flutter/material.dart';
import 'package:lmtsflutter/Data/local_info.dart';
import 'package:lmtsflutter/screens/form_screen.dart';
import '../components/task.dart';


class InitialScreen extends StatefulWidget {

  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 32),
          child: Text('TAREFAS'),
        ),
      ),
      body: ListView(
        children:
          TaskInherited.of(context).taskList,
          padding: EdgeInsets.only(top: 8, bottom: 70),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => FormScreen(taskContext: context,),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
